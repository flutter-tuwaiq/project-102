import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_router/shelf_router.dart';
import '../Response/deleteUserId.dart';
import '../Response/allinfo.dart';
import '../Response/infoUserID.dart';
import '../Response/infoUseremail.dart';
import 'Routes/Route.dart';

class Main {
  Router get handler {
    final router = Router()
      ..get("/allinfo", allinfo)
      ..get("/infoUserID/<id>", infoUserID)
      ..get("/infoUseremail/<email>", infoUseremail)
      ..delete("/deleteUserId/<id>", deleteUserId);
    return router;
  }
  
}
