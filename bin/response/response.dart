import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

printMessageResponse(Request request) {
  final massage = request.params['massege'];

  return Response.ok('$massage');
}
