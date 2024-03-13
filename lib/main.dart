import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashtek/constants/global_variables.dart';

// import 'package:hashtek/constants/bottom_bar.dart';
import 'package:hashtek/constants/my_home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.ubuntuTextTheme(),
          colorScheme: ColorScheme.fromSeed(seedColor: secondary),
          scaffoldBackgroundColor: primary,
        ),
        title: 'Heshtek',
        home: const MyHomePage(
          title: "Myapp",
        ));
  }
}
