import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:memorization_app/provider/auth_provider.dart';
import 'package:memorization_app/ui/login_page.dart';
import 'package:memorization_app/ui/signin_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(
    child: MyApp(),
  ));
}
class MyApp extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthConfirm(),
    );
  }
}
class AuthConfirm extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    return ref.watch(authStateChangesProvider)
    .when(data: (user) {
      if (user == null) return SignInPage();
      return Scaffold(
        body: LogInPage(),
        // body: DeckIndexPage(),
      );
    },
    error: (error, stack) => Text('予期しないエラーが発生しました。'),
    loading: () => CircularProgressIndicator());
  }
}

