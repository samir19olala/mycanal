import 'package:get/get.dart';
import '../../../data/account_model.dart';

class AccountuserscreenController extends GetxController {
  //TODO: Implement AccountuserscreenController

  final RxBool isLoading = true.obs;
  final RxList<UserAccount> userAccounts = <UserAccount>[].obs;

  @override
  void onInit() async {
    super.onInit();
    getData();
  }

  Future<List<UserAccount>> getUserAccounts() async {
    return userAccountData;
  }

  Future<void> getData() async {
    userAccounts.addAll(await getUserAccounts());
    await Future.delayed(Duration(seconds: 10));
    isLoading(false);
  }
}
