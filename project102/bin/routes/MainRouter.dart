import 'package:shelf_router/shelf_router.dart';

import '../response/display_users.dart';
import '../response/remove_user.dart';
import '../response/user_by_email.dart';
import '../response/user_by_id.dart';




class MainRouter{
  Router get myRouter{
  final router = Router()
..get('/users',displayUsers)
..get('/user/<id>',userById)
..get('/users/email/<email>',userByEmail)
..delete('/user/<id>',removeUser);
 
return router;
}}
