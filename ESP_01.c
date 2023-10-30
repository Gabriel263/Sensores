// ARDUINO
#include "lwip/tcp_impl.h"
void tcpClean(){ // limpar protocolo tcp
  while(tcp_tw_pcbs != NULL){
    tcp_abort(tcp_tw_pcbs);
    }
}
#include <ESP8266WiFi.h>

const char* ssid = "WIFI NAME"; // substituir
const char* password = "PASSWORD"; // substituir
const char* host = "0.0.0.0"; // substituir

void connectWIFI(){
  WiFi.begin(ssid, password); // Conecta na wifi
  while (WiFi.status() != WL_CONNECTED)  {
    delay(100);
    Serial.print(".");
  }
  server.begin();
  Serial.println("");
  Serial.print("IP registado: ");
  Serial.println(WiFi.localIP());
}
void initWIFI() {
  Serial.println("\nIniciando configurações de wifi: ");
  delay(15);
  Serial.print("Conectando a rede: ");
  Serial.println(ssid);
  Serial.println("Aguarde");
  connectWIFI();
}
void setup(){
  Serial.begin(115200);
  initWIFI();
}
void loop(){
  tcpClean();
  WiFiClient client = server.available(); // cria o cliente como servidor disponivel
  if(!client){ // espera ate alguem acessar
    return;
  }
  while (!client.available()){ // espera ate o cliente estar disponível
    delay(1);
  }
  String req = client.readStringUntil("\r"); // garante que na requisição tudo será lido
  client.flush();
  if(req.indexOf("/mudarRota") != -1){ // definir rota  // substituir
    client.print("Conexão OK\n"); // printa a informação na pagina
    client.flush();
  }else{
    client.println("Invalid request"); // printa a informação na pagina
    client.stop();
    return;
  }
  client.stop();
  tcpClean();
}