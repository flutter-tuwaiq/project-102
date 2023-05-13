import 'package:shelf_router/shelf_router.dart';
import '../repository/DisplayAll.dart';
import '../repository/DisplayByEmail.dart';
import '../repository/DisplayById.dart';
import '../repository/RemoveUser.dart';

class routes {
  Router get myRoutes{

     final router = Router()

    ..get('/displayAll', displayAll)
    ..get('/displayByID/<id>', DisplayByID)
    ..get('/displayByEmail/<email>', DisplayByEmail)
    ..delete('/removeUser/<id>', removeUser);

    return router;
  }
  
}

