///////////////////////////////////////////////////////////////////////////////
// 1. Create a Dart project and install the Shelf and shelf_hotreload packages.

import 'dart:io';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_hotreload/shelf_hotreload.dart';
import 'Routes/MainRoute.dart';

void main() {
  withHotreload(() => createServer());
}

Future<HttpServer> createServer() async {
  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '9090');
  final server = await serve(MainRoute().myMainRoute, ip, port);
  print('Server listening on port ${server.port}');

  return server;
}
