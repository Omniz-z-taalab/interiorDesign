import 'package:design_flutter1/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
        color: Colors.white,
    ),
    titleTextStyle: const TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    ),
    centerTitle: true,
        ),
bottomNavigationBarTheme: BottomNavigationBarThemeData(
  backgroundColor: Colors.black,
  selectedItemColor: Colors.orangeAccent.shade100,
  unselectedItemColor: Colors.grey,
  type: BottomNavigationBarType.fixed,

)
        ),
      home: HomePage(),
    );
  }
}
