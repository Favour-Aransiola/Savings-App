import 'package:assesment/providers/authProvider.dart';
import 'package:assesment/screens/dashboard/dashboard.dart';
import 'package:assesment/screens/login_screen/login_screen.dart';
import 'package:assesment/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context) => UserAuth(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: blue, width: 1)),
      )),
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        DashBoard.routeName: (context) => DashBoard()
      },
    );
  }
}
