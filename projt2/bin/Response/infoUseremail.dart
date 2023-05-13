import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import '../Models/Model.dart';

infoUseremail(Request _, String email) async {
  try {
    File myFile = File("myrepository.json");
    final content = json.decode(await myFile.readAsString());
    List<User> theuser = [];
    for (var element in content) {
      User user = User.fromJson(element);
      theuser.add(user);
    }
    User userSelect = theuser.firstWhere((element) => element.email == email);
    return Response.ok(json.encode(userSelect.toMap()), 
    headers: {'Content-Type': 'Application/json',
    });
  } catch (error) {
    return Response.notFound(" $email is not found");
  }
}
