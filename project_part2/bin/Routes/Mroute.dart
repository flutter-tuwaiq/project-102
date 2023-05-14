import 'package:shelf_router/shelf_router.dart';
import '../Response/allUsers.dart';
import '../Response/byID.dart';
import '../Response/byEmail.dart';
import '../Response/RbyID.dart';

class Mroute {
  Router get mymainRoute {
    final router = Router()
      ..get('/read_all', allUsers)
      ..get('/read_id/<id>', byID)
      ..get('/read_email/<email>', byEmail)
      ..delete('/removefile/<id>', RbyID);

    return router;
  }
}
