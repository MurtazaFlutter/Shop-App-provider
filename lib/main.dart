import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/features/homepage/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(),
            appBarTheme: const AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle(
              statusBarBrightness: Brightness.light,
              systemNavigationBarColor: Color(0xff06AB8D),
              statusBarColor: Color(0xff06AB8D),
            ))),
        debugShowCheckedModeBanner: false,
        title: 'Massar Shopp app',
        home: const Home());
  }
}
