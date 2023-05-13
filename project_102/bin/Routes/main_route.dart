import 'package:shelf_router/shelf_router.dart';

import '../Responses/delete_by_id.dart';
import '../Responses/display_all_response.dart';
import '../Responses/display_by_email.dart';
import '../Responses/display_by_id.dart';

class MainRoute {
  Router get myMainRoute {
    final router = Router()
      ..get('/display_all', displayAllResponse)
      ..get('/display_by_id/<id>', displayById)
      ..get('/display_by_email/<email>', displayByEmail)
      ..delete('/delete_by_id/<id>', deleteByID);

    return router;
  }
}
