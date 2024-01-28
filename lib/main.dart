import 'package:flutter/material.dart';
import 'package:grocery_uikit/constance/routepath.dart' as routepath;
import 'package:grocery_uikit/login_page/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  //runApp(DevicePreview(enabled: !kReleaseMode, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: routepath.RoutePath.initRoutePath,
      onGenerateRoute: routepath.generateRoute,
      home: const SplashScreen(),
    );
  }
}
