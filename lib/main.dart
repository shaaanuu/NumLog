import 'package:flutter/material.dart';

import 'screens/screen_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NumLog',
      theme: ThemeData(
        primaryColor: const Color(0xFF89B4FA),
        scaffoldBackgroundColor: const Color(0xFF1E1E2E),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF89B4FA),
          secondary: Color(0xFFF5E0DC),
          surface: Color(0xFF302D41),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E2E),
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Color(0xFFF5E0DC),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Color(0xFF302D41),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF89B4FA)),
          ),
          hintStyle: TextStyle(color: Color(0xFFB4BEFE)),
          labelStyle: TextStyle(color: Color(0xFFF5E0DC)),
        ),
      ),
      home: ScreenHome(),
    );
  }
}
