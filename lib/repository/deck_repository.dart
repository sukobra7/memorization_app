import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:memorization_app/entity/deck_entity.dart';
import 'package:memorization_app/firestore/firestore_instance.dart';
import 'package:memorization_app/repository/custom_exception.dart';

class DeckRepository {
  Reader read;

  DeckRepository(this.read);

  Future<List<DeckEntity>?> getDecks(int userId) async {
    final decks = await read(firebaseFirestoreProvider)
        .collection('decks')
        .where('userId', isEqualTo: userId)
        .limit(5)
        .get()
        .then((querySnapshot) => querySnapshot.docs
            .map((res) => DeckEntity.fromJson(res.data()))
            .toList());
    if (decks.isEmpty) {
      throw CustomException(message: 'データが存在しません。');
    }
    return decks;
  }

  Future<DeckEntity>? getDeck(String title, int userId) async {
    return await read(firebaseFirestoreProvider)
        .collection('decks')
        .where('userId', isEqualTo: userId)
        .limit(5)
        .get()
        .then((querySnapshot) =>
            DeckEntity.fromJson(querySnapshot.docs[0].data()));
  }

  Future<void> createDeck(String title, String description, int userId) async {
    if (getDeck(title, userId) != null) {
      throw CustomException(message: "同じタイトルのデッキは作成できません");
    }
    read(firebaseFirestoreProvider)
        .collection('decks')
        .add({'title': title, 'description': description, 'userid': userId});
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
