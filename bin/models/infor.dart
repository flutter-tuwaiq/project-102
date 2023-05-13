class infor{
     String? user_id,
             email ,
             name,
            given_name, 
            family_name,
            nickname,
            last_ip,
           created_at,
            updated_at,
           last_login;
      int? logins_count;
      bool? email_verified ;


     infor({
      required this.user_id,
      required this.email,
      required this.name,
      required this.given_name,
      required this.family_name,
      required this.nickname,
      required this.last_ip,
      required this.created_at,
      required this.updated_at,
      required this.last_login,
      required this.logins_count,
      required this.email_verified

      });

    factory infor.formJson(Map json){
     return infor(
      user_id: json['user_id'], 
      email: json['email'],
      name: json['name'], 
      given_name: json['given_name'], 
      family_name: json['family_name'], 
      nickname: json['nickname'], 
      last_ip: json['last_ip'], 
      created_at: json['created_at'], 
      updated_at: json['updated_at'], 
      last_login: json['last_login'],
      logins_count: json['logins_count'],
      email_verified: json['email_verified']);

    }
    toMap(){
      return{
       'user_id':user_id,
       'email':email,
       'name':name,
       'given_name':given_name,
       'family_name':family_name,
       'nickname':nickname,
       'last_ip':last_ip,
       'created_at':created_at,
       'updated_at':updated_at,
       'last_login':last_login,
       'logins_count':logins_count,
       'email_verified':email_verified
  
      };
    }
     }



