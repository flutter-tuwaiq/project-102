import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import '../Models/Model.dart';

deleteUserId(Request _, String id) async {
  try {
    File myFile = File("myrepository.json");
    final List con = json.decode(await myFile.readAsString());
    con.removeWhere((element) => element["user_id"] == id);
    myFile.writeAsString(json.encode(con));
    return Response.ok("User is deletion ");
  } catch (e) {
    return Response.notFound("$id not found");
  }
}