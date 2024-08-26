import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/core/utils/typedef.dart';
import 'package:blog_app/core/common/entities/user.dart';
import 'package:blog_app/features/auth/domain/repositories/auth_repository.dart';

class CurrentUser implements UsecaseWithoutParams<User> {
  final AuthRepository authRepository;

  CurrentUser(this.authRepository);

  @override
  ResultFuture<User> call() async {
    return await authRepository.currentUser();
  }
}
