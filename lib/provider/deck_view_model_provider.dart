import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:memorization_app/entity/deck_entity.dart';
import 'package:memorization_app/ui/deck/deck_view_model.dart';

final deckViewModelProvider =
    StateNotifierProvider<DeckViewModel, AsyncValue<List<DeckEntity>>>(
        (ref) => DeckViewModel(ref.read));
