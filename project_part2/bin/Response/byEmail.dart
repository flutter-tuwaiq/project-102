import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import '../Model/HwModel.dart';

Future<Response> byEmail(Request _, String email) async {
  try {
    File jsonFile = File('repository.json');
    final List mylist = json.decode(await jsonFile.readAsString());
    final Map userMap = mylist.firstWhere((element) => element["email"] == email);
 

    return Response.ok(
      json.encode(userMap),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (e) {
    print(e);


    return Response.notFound('sorry not found');
  }
}

  

  
