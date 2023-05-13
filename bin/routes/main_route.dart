import 'package:shelf_router/shelf_router.dart';

import '../response/response.dart';

class MainRoute {
  Router get myMainRoot {
    final router = Router()
      ..get("/", printMessageResponse)
      ..get("/echo/<massege>", printMessageResponse);

    return router;
  }
}
