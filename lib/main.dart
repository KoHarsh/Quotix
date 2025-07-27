import 'import_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: PRIMARY_COLOR),
      ),
      initialRoute: PageConfig.SPLASH_SCREEN,
      getPages: [
        GetPage(name: PageConfig.SPLASH_SCREEN, page: () => SplashScreen(),),
        GetPage(name: PageConfig.DASHBOARD_SCREEN, page: () => DashboardScreen(),),
        GetPage(name: PageConfig.ABOUT_SCREEN, page: () => AboutScreen(),),
      ],
    );
  }
}
