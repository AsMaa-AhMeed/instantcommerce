import 'package:flutter/material.dart';
import 'package:instantcommerce/shared/shared_screens/navigation_screen.dart';
import 'package:instantcommerce/user/user_views/aboutus_screen.dart';
import 'package:instantcommerce/user/user_views/contact_screen.dart';
import 'package:instantcommerce/user/user_views/privacy_screen.dart';
import 'package:instantcommerce/user/user_views/setting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        'setting' : (context) => SettingScreen(),
        'contact' : (context) => ContactScreen(),
        'about' : (context) => AboutScreen(),
        'privacy' : (context) => PrivacyScreen(),
      },
    );
  }
}
