import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeal_new/all_bindings.dart';
import 'package:zeal_new/controllers/navigator_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AllBindings(),
      title: 'Zeal Manufacturing',
      theme: ThemeData(
        textTheme: GoogleFonts.hindMaduraiTextTheme(
          Theme.of(context).textTheme,
        ),
        scaffoldBackgroundColor: const Color(0XFFf8fbfe),
        useMaterial3: true,
      ),
      initialRoute: "/",
      onGenerateRoute: NavigationController.onGenerateRoute,
    );
  }
}
