import 'package:blog_app/core/utils/typedef.dart';

abstract interface class Usecase<SuccessType, Params> {
  ResultFuture<SuccessType> call(Params params);
}
