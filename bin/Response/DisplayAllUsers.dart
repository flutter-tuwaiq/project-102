//////////////////////////////////////////////////////////////////////////////////
// 5. Create a "response" folder to contain the handler methods for each endpoint.
// 6. Implement an endpoint to display all users. This endpoint should return a JSON response containing all user objects.

import 'dart:io';
import 'package:shelf/shelf.dart';

displayAllUsers(Request request) async {
  File myFile = File('repository.json');
  final content = await myFile.readAsString();
  return Response.ok(content);
}
