import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import '../models/infor.dart';



Response _rootHandler(Request _){
  return Response.ok('Hello, World!\n');
}



Future<Response> userA (Request _)async{
try{
  File jsonfile=File('bin/models/repository.json/');
  final List infor =json.decode(await jsonfile.readAsString());

  return Response.ok(
   json.encode('infor:$infor'),
   headers: {'Content-Type': 'Application/json'},

  );

}catch(error){
  print(error);
}

return Response.ok('not found!');

}
Future<Response> userId (Request _,String? id)async{
try{
  File jsonfile=File('bin/models/repository.json/');
  final List infor =json.decode(await jsonfile.readAsString());
  Map userbyId=infor.firstWhere((element) => element["user_id"]== id);

  return Response.ok(
   json.encode('user ID:$userbyId'),
   headers: {'Content-Type': 'Application/json'},

  );

}catch(error){
  print(error);
}

return Response.notFound('not found!');
}

Future<Response> userEmail (Request _,String? email)async{
try{
  File jsonfile=File('bin/models/repository.json/');
  final List infor =json.decode(await jsonfile.readAsString());
  Map userbyEmail=infor.firstWhere((element) => element["email"]== email);

  return Response.ok(
   json.encode('user emaill:$userbyEmail'),
   headers: {'Content-Type': 'Application/json'},

  );

}catch(error){
  print(error);
}

return Response.notFound('not found!');
}

Future<Response> deleteId (Request _,String? id)async{
try{
  File jsonfile=File('bin/models/repository.json/');
  final List infor =json.decode(await jsonfile.readAsString());
  infor.firstWhere((element) => element["user_id"]);

  return Response.ok(
   json.encode('Delete user ID:'),
   headers: {'Content-Type': 'Application/json'},

  );

}catch(error){
  print(error);
}

return Response.notFound('not found!');
}