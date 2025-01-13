import 'package:mycanal_app/app/data/json_interface.dart';

enum AccountType {
  kid,
  adult,
}

class UserAccount implements JsonConvertible{
  final String name;
  final String avatar;
  final AccountType accounttype;

  const UserAccount(
      {required this.name, required this.avatar, required this.accounttype});
  @override
  factory UserAccount.fromJson(Map<String, dynamic> json) {
    return UserAccount(
        name: json["name"],
        avatar: json["avatar"],
        accounttype: json["accounttype"]);
  }
  @override
  Map<String, dynamic> toJson() {
    return {"name": name, "avatar": avatar, "accounttype": accounttype};
  }
}

class CanalAccount implements JsonConvertible{
  final String emailOrNum;
  final String password;

  const CanalAccount({
    required this.emailOrNum,
    required this.password,
  });
  @override
  factory CanalAccount.fromJson(Map<String, dynamic> json) {
    return CanalAccount(
        emailOrNum: json["emailOrNum"], password: json["password"]);
  }
  @override
  Map<String, dynamic> toJson() {
    return {"emailOrNum": emailOrNum, "password": password};
  }
}

final List<CanalAccount> canalAccounts = [
  CanalAccount(emailOrNum: '069947999', password: 'tomo02024'),
  CanalAccount(
    emailOrNum: "sam19olala@gmail.com",
    password: "191918181515",
  ),
  CanalAccount(
    emailOrNum: "djimbi0gmail.com",
    password: "samir@19",
  ),
];

final List<UserAccount> userAccountData = [
  UserAccount(
      name: 'tomo cedrine',
      avatar: 'assets/user/cedrine.jpg',
      accounttype: AccountType.adult),
  UserAccount(
      name: 'olala samir',
      avatar: 'assets/user/samir.jpg',
      accounttype: AccountType.adult),
  UserAccount(
      name: 'djimbi simouna elysa',
      avatar: 'assets/user/elysa.jpg',
      accounttype: AccountType.kid),
];
