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
    super.initState();
    //Timer(Duration(seconds: 4), () => Get.toNamed(PageConfig.DASHBOARD_SCREEN));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Center(
          child: Image.asset('assets/logo/logo.png',width: Get.width*0.70).animate().fadeIn(duration: Duration(seconds: 1)),
        ),
      )
    );
  }
}