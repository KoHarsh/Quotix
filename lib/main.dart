import 'package:quotix/modules/quotation/view/create_quotation_screen.dart';

import 'import_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(foregroundColor: Colors.white),
        colorScheme: ColorScheme.fromSeed(seedColor: PRIMARY_COLOR),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: PageConfig.SPLASH_SCREEN,
      getPages: [
        GetPage(
            name: PageConfig.SPLASH_SCREEN,
            page: () => SplashScreen(),
        ),
        GetPage(
          name: PageConfig.DASHBOARD_SCREEN,
          page: () => DashboardScreen(),
        ),
        GetPage(
          name: PageConfig.ADD_EDIT_QUOTATION_SCREEN,
          page: () => CreateQuotationScreen(),
        ),
        GetPage(
            name: PageConfig.ABOUT_SCREEN,
            page: () => AboutScreen(),
        ),
      ],
    );
  }
}
