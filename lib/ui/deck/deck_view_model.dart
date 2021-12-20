import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:memorization_app/entity/deck_entity.dart';
import 'package:memorization_app/provider/deck_provider.dart';

class DeckViewModel extends StateNotifier<AsyncValue<List<DeckEntity>>> {
  Reader _read;
  DeckViewModel(this._read) : super(const AsyncValue.loading());
  
  Future<void> fetchDecks(String userId) async {
    try {
      final decks = await _read(DeckRepositoryProvider).getDecks(userId);
      state = AsyncData(decks);
    } catch (e) {
      state = AsyncValue.error(e);
    }
  }
}
