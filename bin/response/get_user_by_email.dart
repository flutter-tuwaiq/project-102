import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../model/user.dart';

getUserByEmail(Request request, String email) async {
  // File repo = File('users.json');
  final file =
      File('/Users/amnahalherz/Desktop/project-102/bin/routes/users.json');
  final contents = await file.readAsString();

  final data = jsonDecode(contents);
  List<User> users = [];
  for (var user in data) {
    users.add(User.fromJson(user));
  }

  var user = users.firstWhere((element) => element.email == '$email');

  // final List content = json.decode(await repo.readAsString());

  // data.map((user) => users.add(User.fromJson(user)));
  var body = jsonEncode(user);

  return Response.ok(body);
}
