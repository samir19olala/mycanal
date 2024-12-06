enum AccountType {
  kid,
  adult,
}

class UserAccount{
  final String name;
  final String avatar;
  final AccountType accounttype;

  const UserAccount(
      {required this.name, required this.avatar, required this.accounttype});
}

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
