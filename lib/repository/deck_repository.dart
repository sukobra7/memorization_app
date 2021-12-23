import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:memorization_app/entity/deck_entity.dart';
import 'package:memorization_app/firestore/firestore_instance.dart';

class DeckRepository {
  Reader read;

  DeckRepository(this.read);

  Future<List<DeckEntity>> getDecks(String userId) async {
    final decks = await read(firebaseFirestoreProvider)
        .collection('decks')
        .where('userId', isEqualTo: userId)
        .limit(5)
        .get()
        .then((querySnapshot) => querySnapshot.docs
            .map((res) => DeckEntity.fromJson(res.data()))
            .toList());
    return decks;
  }

  Future<void> createDeck(
      String title, String description, String userId) async {
    await read(firebaseFirestoreProvider)
        .collection('decks')
        .add({'title': title, 'description': description, 'userId': userId});
  }

  Future<void> updateDeck(
      String? title, String? description, String? userId) async {
    final deckRef =
        await read(firebaseFirestoreProvider).collection('decks').doc(title);
    final data =
        DeckEntity.fromJson(await deckRef.get().then((res) => res.data()!));
    deckRef.update({
      'title': title ?? data.title,
      'description': description ?? data.description,
      'userId': userId ?? data.userId
    });
  }

  Future<void> deleteDeck(String title) async {
    read(firebaseFirestoreProvider).collection('decks').doc(title).delete();
  }
}
