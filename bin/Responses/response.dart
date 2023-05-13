import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../Models/user.dart';

resetRepoResponse(Request _) {
  try {
    File myfile = File("userInfo.json");
    File reseterFile = File("userInfoReseter.json");
    myfile.writeAsString(reseterFile.readAsStringSync());

    return Response.ok("File Reseted");
  } catch (error) {
    return Response.notFound('File not found');
  }
}

prinntUniversalResponse(Request _) {
  return Response.ok('Hello\n');
}

// __________________ GET: Display All _________________________
displayAll(Request _) async {
  try {
    File myfile = File("userInfo.json");
    final List content = json.decode(await myfile.readAsString());

    return Response.ok(
      json.encode(content),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (error) {
    print(error);

    return Response.notFound("users are not found");
  }
}

// __________________ GET: Display By ID _________________________
displayByIdResponse(Request _, String id) async {
  try {
    File myfile = File("userInfo.json");
    final List content = json.decode(await myfile.readAsString());
    List<user> userInfo = [];

    for (var item in content) {
      userInfo.add(user.fromJson(json: item));
    }

    user selectedUser = userInfo.firstWhere((item) => item.userId == id);

    return Response.ok(
      json.encode(selectedUser.toMap()),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (error) {
    print(error);

    return Response.notFound("Id not found, please enter a correct ID");
  }
}

// __________________ GET: Display By email _________________________
displayByEmailResponse(Request _, String email) async {
  try {
    File myfile = File("userInfo.json");
    final List content = json.decode(await myfile.readAsString());
    List<user> userInfo = [];
    for (var item in content) {
      userInfo.add(user.fromJson(json: item));
    }

    user selectedUser = userInfo.firstWhere((item) => item.email == email);

    return Response.ok(
      json.encode(selectedUser.toMap()),
      headers: {'Content-Type': 'Application/json'},
    );
  } catch (error) {
    print(error);

    return Response.notFound("Id not found, please enter a correct ID");
  }
}

// __________________ DELETE: Delete By ID _________________________
deleteByIdResponse(Request _, String id) async {
  try {
    File myfile = File("userInfo.json");
    List content = json.decode(await myfile.readAsString());
    List<user> userInfo = [];
    List newContent = [];
    for (var item in content) {
      userInfo.add(user.fromJson(json: item));
    }

    user deletedUser = userInfo.firstWhere((item) => item.userId == id);
    // ignore: unnecessary_null_comparison
    if (deletedUser != null) {
      for (var map in userInfo) {
        if (map.userId != id) {
          newContent.add(map.toMap());
        }
      }
      await myfile.writeAsString(json.encode(newContent));

      return Response.ok("User Deleted successfully...");
    }
  } catch (error) {
    return Response.notFound("the user isn't found, please enter a correct id");
  }
}
