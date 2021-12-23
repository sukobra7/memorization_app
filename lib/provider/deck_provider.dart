import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:memorization_app/repository/deck_repository.dart';

final DeckRepositoryProvider = Provider<DeckRepository>((ref) => DeckRepository(ref.read));