//////////////////////////////////////////////////////////////////////////////////
// 5. Create a "response" folder to contain the handler methods for each endpoint.
// 9. Implement an endpoint to remove one user by id. This endpoint should accept an id parameter in the request URL and remove the user object with the matching id from the repository.

import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';

removeById(Request _, String id) async {
  try {
    File myFile = File('repository.json');
    final List content = json.decode(await myFile.readAsString());
    content.removeWhere((user) => user["user_id"] == id);
    myFile.writeAsString(json.encode(content));
  } catch (error) {
    return Response.forbidden("You have to enter a value between 0 and 2");
  }
}
