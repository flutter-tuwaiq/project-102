// I cahnged the File name to User because (code_metrics)..

// ignore_for_file: file_names

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

  User({
    required this.userId,
    required this.email,
    required this.name,
    required this.givenName,
    required this.familyName,
    required this.nickname,
    required this.lastIp,
    required this.loginsCount,
    required this.createdAt,
    required this.updatedAt,
    required this.lastLogin,
    required this.emailVerified,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['user_id'],
      email: json['email'],
      name: json['name'],
      givenName: json['given_name'],
      familyName: json['family_name'],
      nickname: json['nickname'],
      lastIp: json['last_ip'],
      loginsCount: json['logins_count'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      lastLogin: json['last_login'],
      emailVerified: json['email_verified'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'email': email,
      'name': name,
      'given_name': givenName,
      'family_name': familyName,
      'nickname': nickname,
      'last_ip': lastIp,
      'logins_count': loginsCount,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'last_login': lastLogin,
      'email_verified': emailVerified,
    };
  }
}
