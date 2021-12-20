import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
            TextFormField(
              decoration: InputDecoration(
                hintText: 'email',
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'password',
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 30),
            ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 100),
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
            // ConstrainedBox(
            //     constraints: BoxConstraints(maxWidth: 500),
            //     child: SizedBox(
            //         width: screenWidth * 0.8,
            //         child: ElevatedButton(
            //           child: Text('ログアウト'),
            //           style: ElevatedButton.styleFrom(
            //             primary: Colors.white,
            //             onPrimary: Colors.black,
            //             shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(30),
            //             ),
            //           ),
            //           onPressed: () async {
            //             FirebaseAuth.instance.signOut();
            //             await Navigator.of(context).pushReplacement(
            //                 MaterialPageRoute(builder: (context) {
            //               return SignInPage();
            //             }));
            //           },
            //         )))
          ],
        ),
      ),
    );
  }
}
