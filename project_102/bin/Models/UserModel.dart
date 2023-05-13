class UserModel {
  String? userId;
  String? email;
  String? name;
  String? givenName;
  String? familyName;
  String? nickname;
  String? lastIp;
  int? loginsCount;
  String? createdAt;
  String? updatedAt;
  String? lastLogin;
  bool? emailVerified;

  UserModel({
    this.userId,
    this.email,
    this.name,
    this.givenName,
    this.familyName,
    this.nickname,
    this.lastIp,
    this.loginsCount,
    this.createdAt,
    this.updatedAt,
    this.lastLogin,
    this.emailVerified,
  });

  factory UserModel.fromJson({required Map json}) {
    return UserModel(
      userId: json["user_id"],
      email: json["email"],
      name: json["name"],
      givenName: json["given_name"],
      familyName: json["family_name"],
      nickname: json["nickname"],
      lastIp: json["last_ip"],
      loginsCount: json["logins_count"],
      createdAt: json["created_at"],
      updatedAt: json["updated_at"],
      lastLogin: json["last_login"],
      emailVerified: json["email_verified"],
    );
  }

  toMap() {
    return {
      "user_id": userId,
      "email": email,
      "name": name,
      "given_name": givenName,
      "family_name": familyName,
      "nickname": nickname,
      "last_ip": lastIp,
      "logins_count": loginsCount,
      "created_at": createdAt,
      "updated_at": updatedAt,
      "last_login": lastLogin,
      "email_verified": emailVerified,
    };
  }
}
