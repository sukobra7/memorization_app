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
    } catch (e) {
      throw CustomException();
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
    } catch (e) {
      throw CustomException();
    }
  }

  Future<UserEntity> createUser(String name, String email, String password) async {
    try {
      final userRef = await read(firebaseFirestoreProvider)
          .collection('users')
          .add({"name": name, "email": email, "password": password});
      return UserEntity.fromJson(await userRef.get().then((x) => x.data()!));
    } catch (e) {
      throw CustomException();
    }
  }

  Future<void> deleteUser(String name) async {
    try {
      final targetUser =
          await read(firebaseFirestoreProvider).collection('users').doc(name);
      targetUser.delete();
    } catch (e) {
      throw CustomException();
    }
  }
}
