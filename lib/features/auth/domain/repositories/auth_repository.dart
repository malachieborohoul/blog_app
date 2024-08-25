import 'package:blog_app/core/utils/typedef.dart';
import 'package:blog_app/features/auth/domain/entities/user.dart';

abstract interface class AuthRepository {
  ResultFuture<User> signUp({
    required String name,
    required String email,
    required String password,
  });

  ResultFuture<User> signIn({
    required String email,
    required String password,
  });

  ResultFuture<User> currentUser();
}
