import 'package:quotix/import_export.dart';
import 'package:quotix/main.dart';

class ProgressIndicators{

  Future showProgressDialog(BuildContext context) async {
    return
      showDialog(
        context: context,
        barrierDismissible: false,
        barrierColor: Colors.white.withOpacity(0.4),// Prevents closing on tap outside
        builder: (BuildContext context) {
          return SpinKitCubeGrid(
            color: PRIMARY_COLOR,
            size: 50.0,
          );
        },
      );
  }

  Future dismissDialogue({BuildContext? context}) async {
    return Get.back();//Navigator.of(context!).pop();//navigatorKey.currentState?.pop();
  }
}