

import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';




removeUser(Request _, String id)async{ 
  try{
  File myfile = File('repository.json');
  final List content =json.decode(await myfile.readAsString());
  content.removeWhere((users) => users['user_id']== id);
  myfile.writeAsString(json.encode(content));

  return Response.ok("deleted $id");
  }catch(error){
    print(error);

    return Response.notFound("id $id not found");
  }
 }