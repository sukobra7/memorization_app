import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:memorization_app/provider/auth_provider.dart';

class SignInPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final text = useState<String>("");
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
                hintText: 'username',
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onChanged: (val) => {text.value = val},
            ),
            Text(text.value),
            SizedBox(height: 30),
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
              onChanged: (val) => {text.value = val},
            ),
            Text(text.value),
            SizedBox(height: 30),
            ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 100),
                child: SizedBox(
                    width: screenWidth * 0.8,
                    child: ElevatedButton(
                      child: Text('登録'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () async {
                        await ref
                            .read(UserAuthRepositoryProvider)
                            .register(text.value, text.value, text.value);
                      },
                    )))
          ],
        ),
      ),
    );
  }
}
