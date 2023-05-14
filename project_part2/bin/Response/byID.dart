import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import '../Model/HwModel.dart';

Future<Response> byID(Request _, String id) async {

    try {
      File jsonFile = File('repository.json');
      final List mylist = json.decode(await jsonFile.readAsString());
      Map m_users = mylist.firstWhere((element) => element["user_id"] == id);

      return Response.ok(
        json.encode(m_users),
        headers: {'Content-Type': 'Application/json'},
      );
    } catch (e) {
      print(e);


      return Response.notFound('sorry not found');
    }

    
  }

