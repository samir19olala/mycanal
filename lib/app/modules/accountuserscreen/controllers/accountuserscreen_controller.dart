import 'package:get/get.dart';
import '../../../data/account_model.dart';

class AccountuserscreenController extends GetxController {
  //TODO: Implement AccountuserscreenController

  final RxBool isLoading = true.obs;
  final List<UserAccount> userAccounts=[];

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  Future<List<UserAccount>> getUserAccounts() async{
    return userAccountData;

  }
  void getData() async {
    userAccounts.addAll(await getUserAccounts()) ;
    await Future.delayed(Duration(seconds: 10));
    isLoading(false);
  }
}
