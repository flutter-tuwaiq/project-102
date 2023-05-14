import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../Modeld/Models.dart';

deleteUserById(Request _, String id) async {
  try {
    File myFile = File("repository.json");
    final List content = json.decode(await myFile.readAsString());
    content.removeWhere((user) => user["user_id"] == id);
    myFile.writeAsString(json.encode(content));

    return Response.ok("User deletion is completed");
  } catch (error) {
    return Response.notFound("user with id: $id is not found");
  }
}
