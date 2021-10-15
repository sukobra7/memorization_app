import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:memorization_app/fireauth/auth-exception-handler.dart';
import 'package:memorization_app/entity/user_entity.dart';
import 'package:memorization_app/firestore/firestore_instance.dart';
import 'package:memorization_app/provider/auth_provider.dart';
import 'package:memorization_app/provider/user_provider.dart';
import 'package:memorization_app/repository/custom_exception.dart';

class UserAuthRepository {
  Reader read;

  UserAuthRepository(this.read);

  Future<UserEntity> register(
      String email, String password, String name) async {
    try {
      final credential = await read(firebaseAuthProvider)
          .createUserWithEmailAndPassword(email: email, password: password);
      if (credential.user == null) {
        throw CustomException(message: '新規ユーザーを登録できませんでした');
      } else {
        final userSnapShot = await read(firebaseFirestoreProvider)
            .collection('users')
            .doc()
            .get();
        if (userSnapShot.exists) {
          return UserEntity.fromJson(userSnapShot.data()!);
        } else {
          return read(userRepositoryProvider).createUser(name, email, password);
        }
      }
    } on FirebaseAuthException catch (e) {
      throw CustomException(
          message: AuthExceptionHandler.generateExceptionMessage(e.code));
    }
  }

  Future<void> singIn(String email, String password) async {
    try {
      final credential = await read(firebaseAuthProvider)
          .signInWithEmailAndPassword(email: email, password: password);
      if (credential.user != null) {
        print(credential);
        //navigator ホーム画面遷移
      }
    } on FirebaseException catch (e) {
      throw AuthExceptionHandler.generateExceptionMessage(e.code);
    }
  }

  Future<void> signOut() async {
    try {
      if (read(firebaseAuthProvider).currentUser != null) {
        read(firebaseAuthProvider).signOut();
        // 初期画面遷移
      }
    } catch (e) {
      return AuthExceptionHandler.generateExceptionMessage(e);
    }
  }
}
