import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:memorization_app/ui/signin_page.dart';

class LogInPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Log in",
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 30,
                  color: Colors.white),
            ),
            SizedBox(height: 50),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(height: 30),
            ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 500),
                child: SizedBox(
                    width: screenWidth * 0.8,
                    child: ElevatedButton(
                      child: Text('ログイン'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () async {
                        await Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) {
                          return LogInPage();
                        }));
                      },
                    ))),
            ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 500),
                child: SizedBox(
                    width: screenWidth * 0.8,
                    child: ElevatedButton(
                      child: Text('ログアウト'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () async {
                        FirebaseAuth.instance.signOut();
                        await Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) {
                          return SignInPage();
                        }));
                      },
                    )))
          ],
        ),
      ),
    );
  }
}
