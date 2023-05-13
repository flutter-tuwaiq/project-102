import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import '../Models/Model.dart';

infoUserID(Request _, String id) async {
  try {
    File myFile = File("myrepository.json");
    final content = json.decode(await myFile.readAsString());
    List<User> theuser = [];
    for (var element in content) {
      User user = User.fromJson(element);
      theuser.add(user);
    }
    User Select = theuser.firstWhere((user) => user.user_id == id);
    return Response.ok(json.encode(Select.toMap()), headers: {
      'Content-Type': 'Application/json'
    });
  } catch (e) {
    return Response.notFound("user with id: $id is not found");
  }

}
