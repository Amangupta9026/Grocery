
import 'package:flutter/material.dart';
import 'package:nector_grocery/constance/routepath.dart' as routepath;
import 'package:nector_grocery/login_page/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

 runApp(const MyApp());
 //runApp(DevicePreview(enabled: !kReleaseMode, builder: (context) => const MyApp()));
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
