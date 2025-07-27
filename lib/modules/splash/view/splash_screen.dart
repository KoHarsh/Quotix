import 'dart:async';

import 'package:quotix/import_export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () => Get.toNamed(PageConfig.DASHBOARD_SCREEN),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        width: Get.width,
        height: Get.height,
        duration: Duration(seconds: 2),
        child: Center(
          child: SizedBox(
            width: Get.width * 0.75,
            child: FadeInImage(
              image: AssetImage('assets/logo/logo.png'), placeholder: AssetImage('assets/logo/logo.png'),
            ), //Image.asset('assets/logo/logo.png'),
          ),
        ),
      ),
    );
  }
}
