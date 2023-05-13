import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

displayAllResponse(Request _) async {
  try {
    File myFile = File('repository.json');

    final content = json.decode(await myFile.readAsString());

    return Response.ok(
      json.encode(content),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (error) {
    return Response.notFound("Sorry! please try again.");
  }
}
