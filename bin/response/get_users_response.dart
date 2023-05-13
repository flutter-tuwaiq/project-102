import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../model/user.dart';

getUsers(Request request) async {
  // File repo = File('users.json');
  final file =
      File('/Users/amnahalherz/Desktop/project-102/bin/routes/users.json');
  final contents = await file.readAsString();
  final data = jsonDecode(contents);
  List<User> users = [];
  for (var user in data) {
    users.add(User.fromJson(user));
  }

  // final List content = json.decode(await repo.readAsString());

  // data.map((user) => users.add(User.fromJson(user)));
  var body = jsonEncode(users);

  return Response.ok(body);
}
