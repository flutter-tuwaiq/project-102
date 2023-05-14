class User {
  String? user_id;
  String? email;
  String? name;
  String? given_name;
  String? family_name;
  String? nickname;
  String? last_ip;
  int? logins_count;
  String? created_at;
  String? updated_at;
  String? last_login;
  bool? email_verified;

  User({
    this.user_id,
    this.email,
    this.name,
    this.given_name,
    this.family_name,
    this.nickname,
    this.last_ip,
    this.logins_count,
    this.created_at,
    this.updated_at,
    this.last_login,
    this.email_verified,
  });

  factory User.fromJson(Map json) {
    return User(
      user_id: json["user_id"],
      email: json["email"],
      name: json["name"],
      given_name: json["given_name"],
      family_name: json["family_name"],
      nickname: json["nickname"],
      last_ip: json["last_ip"],
      logins_count: json["logins_count"],
      created_at: json["created_at"],
      updated_at: json["updated_at"],
      last_login: json["last_login"],
      email_verified: json["email_verified"],
    );
  }

  toMap() {
    return {
      "user_id": user_id,
      "email": email,
      "name": name,
      "given_name": given_name,
      "family_name": family_name,
      "nickname": nickname,
      "last_ip": last_ip,
      "logins_count": logins_count,
      "created_at": created_at,
      "updated_at": updated_at,
      "last_login": last_login,
      "email_verified": email_verified,
    };
  }
}
