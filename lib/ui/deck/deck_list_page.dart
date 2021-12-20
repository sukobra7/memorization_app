import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:memorization_app/provider/auth_provider.dart';
import 'package:memorization_app/provider/deck_view_model_provider.dart';

class DeckListPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.read(UserAuthRepositoryProvider);
    final userId = useState<String>("");
    final state = ref.watch(deckViewModelProvider);

    useEffect(() {
      Future.microtask(() async {
        userId.value = await currentUser.getCurrentUserId();
        await ref.read(deckViewModelProvider.notifier).fetchDecks(userId.value);
      });
    }, []);

    // final snapshot = useFuture(
    //   useMemoized(() async {
    //     userId.value = await currentUser.getCurrentUserId();
    //     return await ref
    //         .read(deckViewModelProvider.notifier)
    //         .fetchDecks(userId.value);
    //   }, []),
    // );

    return Scaffold(
      appBar: AppBar(
        title: Text("デッキ"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
          child: state.when(
              data: (value) => RefreshIndicator(
                  onRefresh: () async => await ref
                      .read(deckViewModelProvider.notifier)
                      .fetchDecks(userId.value),
                  child: ListView.builder(
                      itemCount: value.length,
                      itemBuilder: (_, index) {
                        return Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 5,
                            margin: EdgeInsets.all(20),
                            child: InkWell(
                              onTap: () {
                                debugPrint('Card tapped.');
                              },
                              child: Column(children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.album),
                                  title: Text(value[index].title),
                                  subtitle: Text(value[index].description),
                                ),
                              ]),
                            ));
                      })),
              loading: () => CircularProgressIndicator(),
              error: (error, stack) => Text('予期せぬエラーが起きました。'))),
    );
  }
}
