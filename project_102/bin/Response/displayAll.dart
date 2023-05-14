import 'dart:io';

import 'package:shelf/shelf.dart';

displayAll(Request _) async {
  File myFile = File("repository.json");
  final content = await myFile.readAsString();

  return Response.ok(content, headers: {
    'Content-Type': 'Application/json',
  });
}
