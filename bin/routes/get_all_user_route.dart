import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../response/get_users_response.dart';

class UsersRouter {
  Router get router {
    final router = Router();
    router.get('/users', getUsers);
    return router;
  }

}
