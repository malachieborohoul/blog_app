import 'package:blog_app/utils/typedef.dart';

abstract interface class Usecase<SuccessType, Params> {
  ResultFuture<SuccessType> call(Params params);
}
