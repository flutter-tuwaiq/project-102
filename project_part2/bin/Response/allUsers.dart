import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import '../Model/HwModel.dart';




Future<Response> allUsers(Request _) async {
  try {
    File jsonFile = File('repository.json');
    final List mylist = json.decode(await jsonFile.readAsString());

    return Response.ok(
      json.encode(mylist),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (e) {
    print(e);

    return Response.notFound('sorry not found');
  }
}

//User 