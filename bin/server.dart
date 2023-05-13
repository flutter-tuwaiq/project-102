import 'dart:io';
import 'package:shelf_hotreload/shelf_hotreload.dart';
import 'package:shelf/shelf_io.dart';
import 'MainRouter/MainRouter.dart';

void main()  {
  withHotreload(() => createServer());
}


Future<HttpServer> createServer() async {
 
  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await serve(MainRouter().myRoute, ip, port);

  print('Server listening on port ${server.port}');

  return server;

}





//-------------------------------------------------------------------------
// Response _rootHandler(Request _) {
//   return Response.ok('Hello, World!\n');
// }

// Response _echoHandler(Request request) {
//   final message = request.params['message'];
//   return Response.ok('$message\n');
// }

