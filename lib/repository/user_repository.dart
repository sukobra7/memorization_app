import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:memorization_app/entity/user_entity.dart';
import 'package:memorization_app/firestore/firestore_instance.dart';
import 'package:memorization_app/repository/custom_exception.dart';

class UserRepository {
  Reader read;

  UserRepository(this.read);

  Future<UserEntity> getUser(String name) async {
    try {
      final user = await read(firebaseFirestoreProvider)
          .collection('users')
          .where("name", isEqualTo: name)
          .get()
          .then((querySnapshot) => querySnapshot.docs
              .map((x) => UserEntity.fromJson(x.data()))
              .toList());
      if (user.length != 1) {
        throw CustomException();
      }
      return user[0];
    } on FirebaseException catch (e) {
      throw CustomException(message: e.message);
    }
  }

  Future<void> updateUser(String name, String? email, String? password) async {
    try {
      final userRef =
          read(firebaseFirestoreProvider).collection('users').doc(name);
      final data =
          UserEntity.fromJson(await userRef.get().then((x) => x.data()!));
      userRef.update({
        "name": name,
        "email": email ?? data.email,
        "password": password ?? data.password
      });
    } on FirebaseException catch (e) {
      throw CustomException(message: e.message);
    }
  }

  Future<UserEntity> createUser(
      String name, String email, String password, String? userId) async {
    try {
      final userRef = await read(firebaseFirestoreProvider)
          .collection('users')
          .add({
        "name": name,
        "email": email,
        "password": password,
        "userId": userId
      });
      return UserEntity.fromJson(await userRef.get().then((x) => x.data()!));
    } on FirebaseException catch (e) {
      throw CustomException(message: e.message);
    }
  }

  Future<void> deleteUser(String name) async {
    try {
      final targetUser =
          await read(firebaseFirestoreProvider).collection('users').doc(name);
      targetUser.delete();
    } on FirebaseException catch (e) {
      throw CustomException(message: e.message);
    }
  }
}
