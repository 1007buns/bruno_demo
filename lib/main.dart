import 'package:bruno_demo/constants.dart';
import 'package:bruno_demo/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'plant app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme(
            primary: kPrimaryColor, // 主题颜色
            primaryVariant: Colors.black,
            secondary: kPrimaryColor.withOpacity(0.23),
            background: kBackgroundColor,
            error: Colors.red,
            brightness: Brightness.light,
            onBackground: Colors.pink,
            secondaryVariant: Colors.black,
            onError: Colors.orange,
            onPrimary: Colors.black, //主题字体颜色
            onSecondary: Colors.redAccent,
            onSurface: Colors.redAccent,
            surface: Colors.redAccent
            // all fields should have a value
            ),
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity, // 视觉密度
      ),
      home: HomeScreen(),
    );
  }
}
