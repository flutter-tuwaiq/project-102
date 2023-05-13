

class UsersModel{

     String? userId;
     String? email;
     String? name;
     String? givenName; 
     String? familyName;
     String? nickname; 
     String? lastIp; 
     int? loginCount; 
     String? createdAt; 
     String? updatedAt; 
     String? lastLogin; 
     bool? emailVerified; 


     UsersModel({
     this.userId,
     this.email,
     this.name,
     this.givenName,
     this.familyName,
     this.nickname,
     this.lastIp, 
     this.loginCount, 
     this.createdAt, 
     this.updatedAt, 
     this.lastLogin, 
     this.emailVerified, 
     });


factory UsersModel.fromJson({required Map json}){
  return UsersModel(
    userId: json["user_id"],
    email: json["email"],
    name: json["name"],
    givenName: json["given_name"],
    familyName: json["family_name"],
    nickname: json["nickname"],
    lastIp: json["last_ip"],
    loginCount: json["logins_count"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    lastLogin: json["last_login"],
    emailVerified: json["email_verified"],
  );
}


toMap(){

   return{

    "user_id": userId,
    "email": email,
    "name": name,
    "given_name": givenName,
    "family_name": familyName,
    "nickname": nickname,
    "last_ip": lastIp,
    "logins_count": loginCount,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "last_login": lastLogin,
    "email_verified": emailVerified,
   };
}
}