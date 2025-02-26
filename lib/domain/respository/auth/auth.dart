import 'package:dartz/dartz.dart';
import 'package:tunes/data/models/auth/create_user_req.dart';

abstract class AuthRepository {
  Future<Either> signUp(CreateUserReq createuserreq);

  Future<void> signIn();
}
