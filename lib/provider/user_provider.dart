import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:memorization_app/repository/user_repository.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) => UserRepository(ref.read));