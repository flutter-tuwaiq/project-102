import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../model/user.dart';

deleteUser(Request request, String id) async {
  // File repo = File('users.json');
  final file =
      File('/Users/amnahalherz/Desktop/project-102/bin/routes/users.json');
  final contents = await file.readAsString();

  final data = jsonDecode(contents);
  List<User> users = [];
  for (var user in data) {
    users.add(User.fromJson(user));
  }

  if (users.contains(users.firstWhere((element) => element.userId == id))) {
    users.removeWhere((element) => element.userId == id);
    var body = jsonEncode(users);
    file.writeAsString(body);

    return Response.ok('user has been deleted');
  } else {
    return Response.ok('user not found');
  }
}
