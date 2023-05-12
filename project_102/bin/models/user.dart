class User {
  String? userId,
      email,
      name,
      givenName,
      familyName,
      nickname,
      lastIp,
      createdAt,
      updatedAt,
      lastLogin;
  int? loginsCount;
  bool? emailVerified;

  User({
    required this.userId,
    required this.email,
    required this.name,
    required this.givenName,
    required this.familyName,
    required this.nickname,
    required this.lastIp,
    required this.createdAt,
    required this.updatedAt,
    required this.lastLogin,
    required this.loginsCount,
    required this.emailVerified,
  });

  factory User.fromJson(Map json) {
    return User(
      userId: json["user_id"],
      email: json["email"],
      name: json["name"],
      givenName: json["given_name"],
      familyName: json["family_name"],
      nickname: json["nickname"],
      lastIp: json["last_ip"],
      createdAt: json["created_at"],
      updatedAt: json["updated_at"],
      lastLogin: json["last_login"],
      loginsCount: json["logins_count"],
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
      "created_at": createdAt,
      "updated_at": updatedAt,
      "last_login": lastLogin,
      "logins_count": loginsCount,
      "email_verified": emailVerified,
    };
  }
}
