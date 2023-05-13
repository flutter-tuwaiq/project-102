import 'dart:io';
import 'package:shelf/shelf.dart';
allinfo(Request _)async{
  File myFile = File("myrepository.json");
  final con = await myFile.readAsString();
  return Response.ok(con,headers: {'Content-Type':'Application/json'});
}