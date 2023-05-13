import 'dart:io';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_hotreload/shelf_hotreload.dart';
import 'routes/MainRouter.dart';

void main(){
  withHotreload(() => createServer());
}
Future<HttpServer> createServer() async{
 final ip =InternetAddress.anyIPv4; 

 final port = int.parse(Platform.environment["PORT"] ?? "8080"); 

 
 final server =await serve(MainRouter().myRouter, ip, port);

 print("server is starting at http:${server.address.host}:${server.port}");

 return server;
}