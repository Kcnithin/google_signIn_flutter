import 'package:flutter/material.dart';

import 'authentication.dart';
import 'google_sign_in_button.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: 20.0,
          ),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.red,
              ],
            ),
          ),
          child: Card(
            margin: EdgeInsets.only(top: 200, bottom: 200, left: 30, right: 30),
            elevation: 20,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Google Login",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                FutureBuilder(
                  future: Authentication.initializeFirebase(context: context),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return const Text('Error initializing Firebase');
                    } else if (snapshot.connectionState ==
                        ConnectionState.done) {
                      return GoogleSignInButton();
                    }
                    return const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.orange,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
