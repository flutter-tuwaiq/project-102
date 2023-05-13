import 'package:shelf_router/shelf_router.dart';
import '../response/Response.dart';

class MainRoute {
  Router get handler {
    final users = Router()
      ..all('/allUsers', allUsers)
      ..get('/users/<id>', userById)
      ..get('/usersEmail/<email>', userByEmail)
      ..delete('/deleteById/<id>', removeById);

    return users;
  }
}
