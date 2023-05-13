import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

deleteByID(Request _, String id) async {
  try {
    File myFile = File('repository.json');
    final List content = json.decode(await myFile.readAsString());

    // remove a user information by given id
    content.removeWhere((user) => user["user_id"] == id);

    // write the updated users after deleting user to repository.json
    myFile.writeAsString(jsonEncode(
      content,
    )); // <-- the file repository.json now is updated

    return Response.ok(
      json.encode("The user information has been deleted"),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (error) {
    return Response.notFound("Sorry! please try again with another id.");
  }
}
