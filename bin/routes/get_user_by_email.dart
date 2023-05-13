import 'package:shelf_router/shelf_router.dart';

import '../response/get_user_by_email.dart';

class GetUserByEmailRouter {
  Router get router {
    final router = Router();
    router.get('/users/email/<email>', getUserByEmail);

    return router;
  }
}
