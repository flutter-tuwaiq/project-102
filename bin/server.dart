import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf/src/handler.dart';
import 'package:shelf_hotreload/shelf_hotreload.dart';
import 'package:shelf_router/shelf_router.dart';

import 'response/response.dart';
import 'routes/delete_user.dart';
import 'routes/get_all_user_route.dart';
import 'response/get_users_response.dart';
import 'routes/get_user_by_email.dart';
import 'routes/get_user_route.dart';
import 'routes/main_route.dart';

Response rootHandler(Request _) {
  return Response.ok("statusCode");
}

Response echoHandler(Request request) {
  final message = request.params['massege'];

  return Response.ok("statusCode");
}

void main() {
  withHotreload(() => createServer());
}

Future<HttpServer> createServer() async {
  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  var router = Router();

  router.mount('/', UsersRouter().router);
  router.mount('/', GetUserRouter().router);
  router.mount('/', GetUserByEmailRouter().router);
  router.mount('/', DeleteUserRouter().router);

  final server = await serve(router, ip, port);
  print('Server listening on port ${server.port}');

  return server;
}
