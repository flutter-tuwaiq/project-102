import 'package:shelf_router/shelf_router.dart';
import '../response/responses.dart';

class MainRoutes {
  static final router = Router()
    ..all('/', rootHandler)
    ..get('/display', displayHandler)
    ..get('/display_by_id/<id>', displayByIdHandler)
    ..get('/display_by_email/<email>', displayByEmailHandler)
    ..delete('/remove/<id>', removeHandler);
}
