import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import '../Model/HwModel.dart';



Future<Response> RbyID(Request _, String id) async {
  try {
    File jsonFile = File('repository.json');
    final List mylist = json.decode(await jsonFile.readAsString());
    mylist.firstWhere((element) => element["user_id"] == id);

    return Response.ok(
      json.encode("deleted."),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (error) {
    print(error);
       
       return Response.notFound('sorry not found');
  }

  
}
