#include <xc.h>
#include <stdio.h>
#include <stdlib.h>

#define _XTAL_FREQ 4000000
#define VREF 5.0 // Tensão de referência
#define ADC_RESOLUTION 1024.0 // Resolução do ADC (10 bits)

void UART_Init(void){
    TRISA0 = 0; // Configura RA0 (TX) como saída
    TRISA1 = 1; // Configura RA1 (RX) como entrada
    TXSTA = 0b00100000; // Habilita o transmissor UART
    RCSTA = 0b10010000; // Habilita o receptor UART
    SPBRG = 25; // Baud rate de 9600 para um clock de 4MHz
}
void UART_Write(char data){
    while(!TRMT); // Aguarda o buffer de transmissão estar vazio
    TXREG = data; // Envia o dado
}
void UART_Write_Text(const char* text){
    int i;
    for(i=0;text[i]!='\0';i++)
        UART_Write(text[i]);
}
char UART_Read(){
   while(!RCIF);
   return RCREG;
}
void UART_Read_Text(char* Output, unsigned int length){
	for(int i=0;i<length;i++)
		Output[i] = UART_Read();
}
void ADC_Init(void){
    TRISA2 = 1; // Configura RA2 como entrada analógica
    ADCON0 = 0b00001001; // Habilita o ADC e seleciona o canal AN2
    ADCON1 = 0b01100000; // Configura o ADC para Fosc/64 e justificado à direita
}
int roundNum(float num){
    return (num >= 0) ? (int)(num + 0.5) : (int)(num - 0.5); // verifica se o número é maior ou igual 0, caso verdadeiro soma 0.5 e arredonda para baixo,
    // caso contrário subtrai 0.5 e arredonda para cima 
}
int readLM35(void){
    __delay_us(10); // Aguarda a estabilização da entrada analógica
    GO_nDONE = 1; // Inicia a conversão ADC
    while(GO_nDONE); // Aguarda a conversão ADC terminar
    int adc = (ADRESH<<8) + ADRESL; // Lê o valor do ADC
    float voltage = adc * VREF / ADC_RESOLUTION; // Converte o valor do ADC em tensão
    int temp = roundNum(voltage / 0.01);// Converte a tensão em temperatura (o LM35 tem uma sensibilidade de 10mV/°C)
    return temp;
}
char *strstr(const char *str1, const char *str2){
   char *cp = (char *) str1; // cria um ponteiro para str1
   char *s1, *s2; // declara dois ponteiros char
   if ( !*str2 ) // se a str2 estiver vazia retorna str1
      return((char *)str1);
   while (*cp){ // faz percorrer cada caractere de str1
      s1 = cp;
      s2 = (char *) str2;
      while ( *s1 && *s2 && !(*s1-*s2) )
         s1++, s2++;
      if (!*s2)
         return(cp);
      cp++;
   }
   return(NULL);
}
int strlen(const char* str){
   int len = 0;
   while(str[len] != '\0') len++; // percorre cada caractere da string ate achar o nulo \0
   return len;
}
void main(void) {
    UART_Init(); // Inicializa o UART
    __delay_ms(3000); // Aguarda 3 segundos
    UART_Write_Text("AT\r\n"); // Envia o comando AT para o ESP01
    __delay_ms(1000);
    UART_Write_Text("AT+CWJAP=\"WIFI NAME\",\"PASSWORD\"\r\n"); // Conecta na wifi
    __delay_ms(5000);
    UART_Write_Text("AT+CIFSR\r\n"); // Obtém o endereço IP
    __delay_ms(2000);
    UART_Write_Text("AT+CIPMUX=1\r\n"); // Habilita múltiplas conexões
    __delay_ms(2000);
    UART_Write_Text("AT+CIPSERVER=1,80\r\n"); // Inicia o servidor na porta 80
    __delay_ms(2000);
    while(1) {
        if (PIR1bits.RCIF) { // Se há dados disponíveis para leitura
            char req[64];
            UART_Read_Text(req, sizeof(req)); // Lê a string até encontrar um '\n'
            if(strstr(req, "/mudarRota") != NULL){
                int temp = readLM35(); // Lê a temperatura do LM35
                char tempStr[10];
                sprintf(tempStr, "%d", temp); // Converte a temperatura em uma string
                char lenStr[10];
                sprintf(lenStr, "%d", strlen(tempStr)); // Converte o comprimento da string em uma string
                UART_Write_Text("AT+CIPSEND=0,");
                UART_Write_Text(lenStr);
                UART_Write_Text("\r\n");
                __delay_ms(1000);
                UART_Write_Text(tempStr); // Envia a temperatura lida
                UART_Write_Text("\r\n");
                __delay_ms(1000);
            } else {
                UART_Write_Text("AT+CIPSEND=0,16\r\n");
                __delay_ms(1000);
                UART_Write_Text("Invalid request\r\n");
                __delay_ms(1000);
            }
            UART_Write_Text("AT+CIPCLOSE=0\r\n");
            __delay_ms(1000);
        }
        __delay_ms(2000); // Aguarda 2 segundos antes de enviar o próximo comando AT
        UART_Write_Text("AT\r\n"); 
    }
}