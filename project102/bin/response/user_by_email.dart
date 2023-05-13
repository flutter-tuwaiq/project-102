import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../model/users.dart';



userByEmail(Request _, String email) async{ 
  try{
  File myfile = File('repository.json');
  final content =json.decode(await myfile.readAsString());
  List<Users> myUsers=[];
  for (var element in content) {
    Users users = Users.fromJson(element);
    myUsers.add(users);
  }
  Users selectUsers= myUsers.firstWhere((users) => users.email == email);

  return Response.ok(json.encode(selectUsers.toMap()),headers: {'Content-Type': 'Application/'});
  }catch(error){
    print(error);

    return Response.notFound("email $email not found");
  }
 }