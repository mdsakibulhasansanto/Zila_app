import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zila app',
      home: HomePage(),

      theme: ThemeData(
        primaryColor: Colors.white,
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Colors.white,
          actionTextColor: Colors.black,
          contentTextStyle: TextStyle(
            color: Colors.black
          )
        ),

        cardTheme: const CardTheme(
          color: Colors.white,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16.0, color: Colors.black),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(40, 108, 180, 1),
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
          drawerTheme: const DrawerThemeData(
            backgroundColor: Colors.white,
            scrimColor: Colors.black54,
            elevation: 8.0,

          ),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white
        )
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.black,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
        ),
        cardTheme: const CardTheme(
          color: Colors.black,
        ),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.black,
          scrimColor: Colors.black54,
          elevation: 8.0,


        ),
        cardColor: Colors.black,
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16.0, color: Colors.white70),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          //foregroundColor: Colors.white,
          titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink)),
        ),
      ),

      themeMode: ThemeMode.system,


    );


  }
}


