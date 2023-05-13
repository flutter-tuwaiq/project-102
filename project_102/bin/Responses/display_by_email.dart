import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../Models/UserModel.dart';

displayByEmail(Request _, String email) async {
  try {
    File myFile = File('repository.json');
    final content = json.decode(await myFile.readAsString());

    List<UserModel> userList = [];

    content
        .map(
          (value) => userList.add(UserModel.fromJson(json: (value))),
        )
        .toList();

    var selectedUser = userList.firstWhere((element) => element.email == email);

    return Response.ok(
      json.encode(selectedUser.toMap()),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (error) {
    return Response.notFound("Sorry! please try again with another email.");
  }
}
