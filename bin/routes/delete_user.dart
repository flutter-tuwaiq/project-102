import 'package:shelf_router/shelf_router.dart';

import '../response/delete_user_response.dart';

class DeleteUserRouter {
  Router get router {
    final router = Router();
    router.delete('/users/<id>', deleteUser);

    return router;
  }
}
