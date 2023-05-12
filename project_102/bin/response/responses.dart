import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import '../models/user.dart';

Response rootHandler(Request _) {
  return Response.ok('server is working');
}

Future<Response> displayHandler(Request _) async {
  try {
    File jsonFile = File('bin/repository.json');
    final List users = json.decode(await jsonFile.readAsString());

    return Response.ok(
      json.encode(users),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (e) {
    return Response.notFound('Users not found!');
  }
}

Future<Response> displayByIdHandler(Request _, String id) async {
  try {
    File jsonFile = File('bin/repository.json');
    final List users = json.decode(await jsonFile.readAsString());
    final Map userMap = users.firstWhere((user) => user["user_id"] == id);
    User selectedUser = User.fromJson(userMap);

    return Response.ok(
      json.encode(selectedUser.toMap()),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (e) {
    return Response.notFound('User not found!');
  }
}

Future<Response> displayByEmailHandler(Request _, String email) async {
  try {
    File jsonFile = File('bin/repository.json');
    final List users = json.decode(await jsonFile.readAsString());
    final Map userMap = users.firstWhere((user) => user["email"] == email);
    User selectedUser = User.fromJson(userMap);

    return Response.ok(
      json.encode(selectedUser.toMap()),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (e) {
    return Response.notFound('User not found!');
  }
}

Future<Response> removeHandler(Request _, String id) async {
  try {
    File jsonFile = File('bin/repository.json');
    final List users = json.decode(await jsonFile.readAsString());
    users.removeWhere((user) => user["user_id"] == id);

    jsonFile.writeAsString(json.encode(users));

    return Response.ok(
      json.encode("User got deleted!"),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (e) {
    return Response.notFound('User not found!');
  }
}
