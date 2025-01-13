import 'package:flutter/material.dart';


// import 'package:get/get.dart';

Future<void> showDialogLoginPopUp(
    BuildContext context, controller, message, icon) async {
  await showDialog(
      useSafeArea: false,
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        controller.checkUser();
        return Dialog(
          elevation: 10,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: 160,
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  icon,
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    message,
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
          ),
        );
      });
  controller.checkUser();
}

enum MessageType {
  error,
  info,
  confirm,
}

void showInfo(BuildContext context, MessageType type, String message) {
  Icon icon;
  if (type == MessageType.error) {
    icon = Icon(Icons.error, color: Colors.red, size: 60);
  } else if (type == MessageType.info) {
    icon = Icon(Icons.info, color: Colors.blueGrey, size: 60);
  } else {
    icon = Icon(Icons.check, color: Colors.blue, size: 60);
  }
  showDialog(
      useSafeArea: false,
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          elevation: 10,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 400,
            ),
            height: 160,
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          icon,
                        ],
                      ),
                      SizedBox(
                        width: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              message,
                              overflow: TextOverflow.clip,
                              softWrap: true,
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text("close"))
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
