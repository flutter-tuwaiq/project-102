import 'dart:convert';
import 'dart:io';

import '../model/User.dart';

class Repository {
  final List<User> _users = [];

  Repository() {
    // Read users from JSON file
    final jsonString = File('repository.json').readAsStringSync();
    final jsonList = json.decode(jsonString) as List;
    _users.addAll(jsonList.map((json) => User.fromJson(json)).toList());
  }

  List<User> getAllUsers() {
    return List.unmodifiable(_users);
  }
}
