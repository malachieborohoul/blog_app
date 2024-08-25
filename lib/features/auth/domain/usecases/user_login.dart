import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/core/utils/typedef.dart';
import 'package:blog_app/features/auth/domain/entities/user.dart';
import 'package:blog_app/features/auth/domain/repositories/auth_repository.dart';

class UserLogin implements Usecase<User, UserLoginParams> {
  final AuthRepository authRepository;

  UserLogin(this.authRepository);
  @override
  ResultFuture<User> call(UserLoginParams params) async {
    return await authRepository.signIn(
        email: params.email, password: params.password);
  }
}

class UserLoginParams {
  final String email;
  final String password;

  UserLoginParams({required this.email, required this.password});
}
