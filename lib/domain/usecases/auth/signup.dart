import 'package:dartz/dartz.dart';
import 'package:tunes/core/usecase/usecase.dart';
import 'package:tunes/data/models/auth/create_user_req.dart';
import 'package:tunes/domain/respository/auth/auth.dart';
import 'package:tunes/service_locator.dart';

class SignupUseCase implements UseCase<Either,CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq ? params}) async {
    
    return sl<AuthRepository>().signUp(params!);
    
  }
}