class UsersModel {
  List<Users>? users;

  UsersModel({this.users});

  UsersModel.fromJson(Map<String, dynamic> json) {
    if (json['users'] != null) {
      users = <Users>[];
      json['users'].forEach((v) {
        users!.add(Users.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (users != null) {
      data['users'] = users!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Users {
  String? username;
  String? password;
  String? displayName;
  String? userImage;
  int? userLevel;
  String? role;

  Users(
      {this.username,
      this.password,
      this.displayName,
      this.userImage,
      this.userLevel,
      this.role});

  Users.fromJson(Map<String, dynamic> json) {
    username = json['username'] as String?;
    password = json['password'] as String?;
    displayName = json['displayName'] as String?;
    userImage = json['userImage'] as String?;
    userLevel = json['userLevel'] as int?;
    role = json['role'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['password'] = password;
    data['displayName'] = displayName;
    data['userImage'] = userImage;
    data['userLevel'] = userLevel;
    data['role'] = role;
    return data;
  }
}
