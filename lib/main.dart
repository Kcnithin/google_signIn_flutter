import 'package:flutter/material.dart';

import 'SignInScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Samples',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
      ),
      home: SignInScreen(),
    );
  }
//generate signing report using keytool -list -v -keystore "C:\Users\Nithin\.android\debug.keystore" -alias androiddebugkey -storepass android -keypass android
  //Create a new Firebase project by going to the Firebase console.Link(https://medium.com/flutter-community/flutter-implementing-google-sign-in-71888bca24ed)

}
