
 import 'package:shelf_router/shelf_router.dart';

import 'ee.dart';
import 'raute.dart';

class MainRoute {
   Router get handler {
     final router = Router()
       ..get("/display_all", displayAll)
       ..get("/display_user_by_id/<id>", displayUserById)
       ..get("/display_user_by_email/<email>", displayUserByEmail)
       ..delete("/delete_user_by_id/<id>", deleteUserById);

     return router;
   }
 }