// ignore_for_file: file_names

import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import '../model/User.dart';

Future<Response>allUsers(Request _) async {
  try {
    File jsonFile = File('bin/repository.json');
    final List users = json.decode(await jsonFile.readAsString());

    return Response.ok(
      json.encode('users: $users'),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (error) {
    print(error);
  }

  return Response.ok('sorry not found');
}

Future<Response>userById(Request _, String id) async {
  try {
    File jsonFile = File('bin/repository.json');
    final List users = json.decode(await jsonFile.readAsString());
    Map usersId = users.firstWhere((element) => element["user_id"] == id);

    return Response.ok(
      json.encode('user by id: $usersId'),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (error) {
    print(error);
  }

  return Response.notFound('sorry not found');
}

Future<Response>userByEmail(Request _, String email) async {
  try {
    File jsonFile = File('bin/repository.json');
    final List users = json.decode(await jsonFile.readAsString());
    Map usersEmail = users.firstWhere((element) => element["email"] == email);

    return Response.ok(
      json.encode('user by email: $usersEmail'),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (error) {
    print(error);
  }

  return Response.notFound('sorry not found');
}

Future<Response>removeById(Request _, String id) async {
  try {
    File jsonFile = File('bin/repository.json');
    final List users = json.decode(await jsonFile.readAsString());
    users.firstWhere((element) => element["user_id"] == id);

    return Response.ok(
      json.encode("It's removed."),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (error) {
    print(error);
  }

  return Response.notFound('sorry not found');
}