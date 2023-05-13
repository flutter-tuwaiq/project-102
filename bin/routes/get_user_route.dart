import 'package:shelf_router/shelf_router.dart';

import '../response/get_user_response.dart';

class GetUserRouter {
  Router get router {
    final router = Router();
    router.get('/users/<id>', getUser);

    return router;
  }
}
