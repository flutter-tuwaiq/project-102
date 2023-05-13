//////////////////////////////////////////////////////////////////////////////////
// 5. Create a "response" folder to contain the handler methods for each endpoint.
// 8. Implement an endpoint to display one user by email. This endpoint should accept an email parameter in the request URL and return a JSON response containing the user object with the matching email.

import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../Model/model.dart';

displayUserByEmail(Request _, String email) async {
  try {
    File myFile = File("repository.json");
    final content = json.decode(await myFile.readAsString());

    List<Users> myUser = [];

    for (var item in content) {
      Users user = Users.fromJson(item, json: {});
      myUser.add(user);
    }

    Users userSelect = myUser.firstWhere((user) => user.email == email);

    return Response.ok(json.encode(userSelect.toMap()), headers: {
      'Content-Type': 'Application/json',
    });
  } catch (error) {
    return Response.notFound("user with email: $email is not found");
  }
}

// import 'package:shelf/shelf.dart';
// import 'package:shelf_router/shelf_router.dart';

// printHello(Request request) {
//   final message = request.params['message'];

//   return Response.ok("Hello world\n");
// }
