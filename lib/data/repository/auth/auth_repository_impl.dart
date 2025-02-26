import 'package:dartz/dartz.dart';
import 'package:tunes/data/models/auth/create_user_req.dart';
import 'package:tunes/data/sources/auth/auth_firebase_service.dart';
import 'package:tunes/domain/respository/auth/auth.dart';
import 'package:tunes/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository{

  @override
  Future<void> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either> signUp(CreateUserReq createuserreq) async {
    
    return await sl<AuthFirebaseServiceImpl>().signUp(createuserreq);
  }

}