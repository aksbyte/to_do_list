import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'pages/home_page.dart';

void main() async {
  //init hive
  await Hive.initFlutter();
  var box = await Hive.openBox('myBox');
  runApp(const MyApp());
  // open box
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            home: const MyHomePage(
              title: 'To-Do app',
            ),
            theme: ThemeData(
              primaryColor: Colors.white,
              textTheme: const TextTheme(
                displayLarge: TextStyle(color: Colors.white),
                displayMedium: TextStyle(color: Colors.white),
                bodyMedium: TextStyle(color: Colors.white),
                titleMedium: TextStyle(color: Colors.white),
              ),
            ),
          );
        });
  }
}
