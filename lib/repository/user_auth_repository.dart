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
        //currentuserがnilで来ないか確認する
        final userId = read(firebaseAuthProvider).currentUser?.uid;
        return read(userRepositoryProvider)
            .createUser(name, email, password, userId);
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
      throw AuthExceptionHandler.generateExceptionMessage(e);
    }
  }

  Future<String> getCurrentUserId() async {
    final userAuth = await read(firebaseAuthProvider).currentUser;
    if (userAuth == null) {
      throw CustomException(message: '認証確認できませんでした。');
    } else {
      final user = await read(firebaseFirestoreProvider)
          .collection('users')
          .where('userId', isEqualTo: userAuth.uid)
          .get()
          .then((QuerySnapshot) => QuerySnapshot.docs
          .map((res) => UserEntity.fromJson(res.data())).toList());
      return user[0].userId;
    }
  }
}
