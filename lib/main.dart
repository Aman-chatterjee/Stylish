import 'package:flutter/material.dart';
import 'package:stylish_app/pages/start_page/welcome_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stylish',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        textTheme: GoogleFonts.montserratTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xfff9f9f9),),
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}

