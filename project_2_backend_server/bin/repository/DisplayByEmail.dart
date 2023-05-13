
import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../Models/models.dart';



DisplayByEmail(Request _, String email) async{ 
  try{
  File myfile = File('repository.json');
  final content =json.decode(await myfile.readAsString());
  
  List<Models> myListUsers=[];
  for (var element in content) {
    Models users = Models.fromJson(element, json: {});
    myListUsers.add(users);
  }
  Models selectUsers= myListUsers.firstWhere((users) => users.email == email);

  return Response.ok(json.encode(selectUsers.ToMap()),headers: {'Content-Type': 'Application/'});
  }catch(error){
    print(error);

    return Response.notFound("email $email not found");
  }
 }