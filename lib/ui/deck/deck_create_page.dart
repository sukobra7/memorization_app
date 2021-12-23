import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:memorization_app/provider/auth_provider.dart';
import 'package:memorization_app/provider/deck_provider.dart';

class DeckCreatePage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final currentUser = ref.read(UserAuthRepositoryProvider);
    final userId = useState('');
    final text = useState<String>("");

    useEffect(() {
      Future.microtask(() async {
        userId.value = await currentUser.getCurrentUserId();
      });
    });

    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'タイトル',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onChanged: (val) => {text.value = val},
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '概要',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(30),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onChanged: (val) => {text.value = val},
            ),
            SizedBox(height: 50),
            FloatingActionButton.extended(
              onPressed: () async {
                ref
                    .read(DeckRepositoryProvider)
                    .createDeck(text.value, text.value, userId.value);
              },
              label: Text(
                '作成',
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
