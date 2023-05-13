import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import '../ResponsesMine/ResponseMethos.dart' ;

class MainRouter 
{
 
  Router get myRoute {
    final router = Router()
    ..get('/GetAll', ResponseMethos().getAll)
    ..get('/Get_by_id/<id>', ResponseMethos().getById)
    ..get('/Get_by_email/<email>', ResponseMethos().getByEmail)
    ..delete('/delete_by_id/<id>', ResponseMethos().removeById);
    
    return router;
  }

}