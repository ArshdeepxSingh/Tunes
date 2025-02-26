import 'package:dartz/dartz.dart';
import 'package:tunes/core/usecase/usecase.dart';
import 'package:tunes/data/models/auth/signin_user_req.dart';
import 'package:tunes/domain/respository/auth/auth.dart';
import 'package:tunes/service_locator.dart';

class SignInUseCase implements UseCase<Either,SigninUserReq> {
  @override
  Future<Either> call({SigninUserReq? params}) async {
    
    return sl<AuthRepository>().signIn(params!);
    
  }
}