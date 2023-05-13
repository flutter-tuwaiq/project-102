// ignore_for_file: file_names
import 'package:shelf_router/shelf_router.dart';

import '../Responses/response.dart';

// ignore: camel_case_types
class routerHandler {
  Router get myRouter {
    final router = Router()
      ..get('/', prinntUniversalResponse)
      ..get('/resetFile', resetRepoResponse)//Reset values of repo [after delete test]
      // CRUD operations...
      ..get('/user/view/id=<id>', displayByIdResponse)
      ..get('/user/view/email=<email>', displayByEmailResponse)
      ..get('/user/view/all', displayAll)
      ..delete('/user/delete/id=<id>', deleteByIdResponse);

    return router;
  }
}
