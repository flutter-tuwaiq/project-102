import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import '../Response/response.dart';
import '../models/infor.dart';


class myRouter{
  Router get Handler{
    final infor=Router()
    ..all('/userA', userA)
    ..get('/userId/<id>', userId)
    ..get('/userEmail/<email>', userEmail)
    ..delete('/deleteId/<id>', deleteId);
    
    return infor;

  }
}