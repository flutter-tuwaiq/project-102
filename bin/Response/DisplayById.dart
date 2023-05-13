//////////////////////////////////////////////////////////////////////////////////
// 5. Create a "response" folder to contain the handler methods for each endpoint.
// 7. Implement an endpoint to display one user by id. This endpoint should accept an id parameter in the request URL and return a JSON response containing the user object with the matching id.

import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import '../Model/model.dart';

displayById(Request _, String id) async {
  try {
    File myFile = File('repository.json');
    final content = json.decode(await myFile.readAsString());

    List<Users> myUsers = [];

    for (var item in content) {
      Users user = Users.fromJson(item, json: {});
      myUsers.add(user);
    }

    Users userSelect = myUsers.firstWhere((users) => users.userId == id);

    return Response.ok(json.encode(userSelect.toMap()), headers: {
      'Content-Type': 'Application/json',
    });
  } catch (error) {
    print(error);
    return Response.notFound("Not found");
  }
}
