import 'package:flutter/material.dart';
import 'package:mycanal_app/app/routes/app_pages.dart';
import '../../../data/account_model.dart';
import 'package:get/get.dart';

class AddUserAccount extends StatelessWidget {
  const AddUserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: () {
        print("add user account");
      },
      child: Card(
        color: Get.theme.cardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_circle_outline,
              size: 70,
              color: Colors.white38,
            ),
            SizedBox(height: 8.0),
            const Text(
              "Ajouter",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AccountWidget extends StatelessWidget {
  final UserAccount user;
  const AccountWidget({super.key, required this.user});

  String _checkNameLength(name) {
    if (name.length > 10) return "${name.substring(0, 10)}...";
    return name;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.HOME,arguments:user);
      },
      child: Card(
        color: Get.theme.cardColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(user.avatar),
            ),
            SizedBox(height: 8.0),
            Text(
              _checkNameLength(user.name),
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
