////////////////////////////////////////////////////////////////////////////////
// 4. Create a "routes" folder to contain the router handlers for each endpoint.

import 'package:shelf_router/shelf_router.dart';
import '../Response/DisplayAllUsers.dart';
import '../Response/DisplayById.dart';
import '../Response/DisplayByEmail.dart';
import '../Response/RemoveById.dart';

class MainRoute {
  Router get myMainRoute {
    final router = Router()
      ..get('/users', displayAllUsers)
      ..get('/users/<id>', displayById)
      ..get('/users/<id>', displayUserByEmail)
      ..delete('/users/<id>', removeById);
    return router;
  }
}
