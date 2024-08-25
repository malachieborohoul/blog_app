
import 'package:blog_app/utils/typedef.dart';


abstract interface class AuthRepository {
  ResultFuture<String> signUp({
    required String name,
    required String email,
    required String password,
  });

  ResultFuture<String> signIn({
    required String email,
    required String password,
  });
}
