import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:memorization_app/repository/user_auth_repository.dart';

final UserAuthRepositoryProvider = Provider<UserAuthRepository>((ref) => UserAuthRepository(ref.read));

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

final authStateChangesProvider = StreamProvider<User?>((ref) => ref.watch(firebaseAuthProvider).authStateChanges());