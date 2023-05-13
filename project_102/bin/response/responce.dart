// ignore_for_file: file_names

import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';

Future<Response> displayAllUsers(Request _) async {
  try {
    final List users =
        json.decode(await File('repository.json').readAsString());

    return Response.ok(
      json.encode(users),
      headers: {'Content-Type': 'application/json'},
    );
  } catch (error) {
    return Response.notFound('Sorry, not found');
  }
}

Future<Response> dispalyUserById(Request _, String id) async {
  try {
    final List users =
        json.decode(await File('repository.json').readAsString());
    final user = users.firstWhere((element) => element["user_id"] == id);

    return Response.ok(
      json.encode(user),
      headers: {'Content-Type': 'application/json'},
    );
  } catch (error) {
    return Response.notFound('Sorry, not found');
  }
}

Future<Response> displayUserByEmail(Request _, String email) async {
  try {
    final List users =
        json.decode(await File('repository.json').readAsString());
    final user = users.firstWhere((element) => element["email"] == email);

    return Response.ok(
      json.encode(user),
      headers: {'Content-Type': 'application/json'},
    );
  } catch (error) {
    return Response.notFound('Sorry, not found');
  }
}

Future<Response> removeUserById(Request _, String id) async {
  try {
    final List users =
        json.decode(await File('repository.json').readAsString());
    users.removeWhere((element) => element["user_id"] == id);

    return Response.ok(
      json.encode("It's removed."),
      headers: {'Content-Type': 'application/json'},
    );
  } catch (error) {
    return Response.notFound('Sorry, not found');
  }
}
