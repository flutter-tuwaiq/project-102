// ignore_for_file: file_names

import 'package:shelf_router/shelf_router.dart';

import '../response/Responce.dart';

class MainRoute {
  Router get handler {
    final users = Router()
      ..get('/allUsers', displayAllUsers)
      ..get('/users/<id>', dispalyUserById)
      ..get('/usersEmail/<email>', displayUserByEmail)
      ..delete('/deleteById/<id>', removeUserById);

    return users;
  }
}
