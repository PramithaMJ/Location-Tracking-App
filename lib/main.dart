import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:location_tracking_app/firebase_options.dart';
import 'package:location_tracking_app/screens/login_screen.dart';
import 'package:location_tracking_app/screens/main_page.dart';
import 'package:location_tracking_app/screens/register_screen.dart';
import 'package:location_tracking_app/splashScreen/splash_screen.dart';
import 'package:location_tracking_app/themeProvider/theme_provider.dart';
 import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
//29:11