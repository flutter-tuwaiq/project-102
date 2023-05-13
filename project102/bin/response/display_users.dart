import 'dart:io';
import 'package:shelf/shelf.dart';

displayUsers (Request _)async{ 
  try{File myfile = File('repository.json');
  final content = await myfile.readAsString();
  print(content);

 return Response.ok("check console");
  }catch(error){
    print(error);
  }
}