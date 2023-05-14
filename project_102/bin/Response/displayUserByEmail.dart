import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../Modeld/Models.dart';

displayUserByEmail(Request _, String email) async {
  try {
    File myFile = File("repository.json");
    final content = json.decode(await myFile.readAsString());

    List<User> myUser = [];

    for (var item in content) {
      User user = User.fromJson(item);
      myUser.add(user);
    }

    User userSelect = myUser.firstWhere((user) => user.email == email);

    return Response.ok(json.encode(userSelect.toMap()), headers: {
      'Content-Type': 'Application/json',
    });
  } catch (error) {
    return Response.notFound("user with email: $email is not found");
  }
}
