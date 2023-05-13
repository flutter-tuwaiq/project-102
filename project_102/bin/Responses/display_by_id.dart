import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../Models/UserModel.dart';

displayById(Request _, String id) async {
  try {
    File myFile = File('repository.json');
    final content = json.decode(await myFile.readAsString());

    List<UserModel> userList = [];

    content
        .map(
          (value) => userList.add(UserModel.fromJson(json: (value))),
        )
        .toList();

    var selectedUser = userList.firstWhere((element) => element.userId == id);

    return Response.ok(
      json.encode(selectedUser.toMap()),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (error) {
    return Response.notFound("Sorry! please try again with another id.");
  }
}
