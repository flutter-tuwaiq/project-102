import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import '../../Models/UsersModel.dart';
import '../ResponsesMine/ResponseMethos.dart';


class ResponseMethos {

  final File fileOfData = File('users.json');


  Future<Response> getAll(Request _) async {
    
      final content = json.decode(await fileOfData.readAsString());

      return  Response.ok(json.encode(content),
                              headers: {'Content-Type' : 'application/json'},);    
  }

  Future<Response> getById(Request _ , String id) async {
            try {
              final  content = json.decode(await fileOfData.readAsString());
              Map selectUser = content.firstWhere((e) => e["user_id"] == id);

              return Response.ok(json.encode(selectUser),
                headers: {'Content-Type': 'Application/json'},); 
            } catch (e) {
              return Response.forbidden("User not found");
            }
  }


  Future<Response> getByEmail(Request _ , String email) async {
            try {
              final  content = json.decode(await fileOfData.readAsString());
              Map selectUser = content.firstWhere((e) => e["email"] == email);

              return Response.ok(json.encode(selectUser),
                headers: {'Content-Type': 'Application/json'},); 
            } catch (e) {
              return Response.forbidden("User not found");
            }
            
  }

  Future<Response> removeById(Request _ , String id) async {
            try {

                final List content = json.decode(await fileOfData.readAsString());
                content.removeWhere((e) => e["user_id"] == id);
                
                return Response.ok(json.encode("User Has deleted"),
                    headers: {'Content-Type': 'Application/json'},); 
            } catch (e) {
              return Response.forbidden("User not found");
            }
            
  }



}


