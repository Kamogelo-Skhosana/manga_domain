import 'package:flutter/material.dart';
import 'package:manga_domain/pages/trial_page.dart';
import 'package:manga_domain/pages/forgot_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manga Domain',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.light(primary: Color(0xFFEA2831)),
      //   primaryColor: Color(0xFFEA2831),
      //   buttonTheme: ButtonThemeData(buttonColor: Color(0xFFEA2831)),
      // ),
      home: TrialPage(),
    );
  }
}
