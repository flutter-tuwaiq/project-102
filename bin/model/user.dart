class User {
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

  User(
      {this.userId,
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
      this.emailVerified});

  User.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    email = json['email'];
    name = json['name'];
    givenName = json['given_name'];
    familyName = json['family_name'];
    nickname = json['nickname'];
    lastIp = json['last_ip'];
    loginsCount = json['logins_count'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    lastLogin = json['last_login'];
    emailVerified = json['email_verified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['email'] = this.email;
    data['name'] = this.name;
    data['given_name'] = this.givenName;
    data['family_name'] = this.familyName;
    data['nickname'] = this.nickname;
    data['last_ip'] = this.lastIp;
    data['logins_count'] = this.loginsCount;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['last_login'] = this.lastLogin;
    data['email_verified'] = this.emailVerified;
    return data;
  }
}
