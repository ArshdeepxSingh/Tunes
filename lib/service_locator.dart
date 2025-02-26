import 'package:get_it/get_it.dart';
import 'package:tunes/data/repository/auth/auth_repository_impl.dart';
import 'package:tunes/data/sources/auth/auth_firebase_service.dart';
import 'package:tunes/domain/respository/auth/auth.dart';
import 'package:tunes/domain/usecases/auth/signup.dart';

final GetIt sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // ✅ Register the implementation as itself
  sl.registerSingleton<AuthFirebaseServiceImpl>(AuthFirebaseServiceImpl());

  // ✅ Register interface using implementation
  sl.registerSingleton<AuthFirebaseService>(sl<AuthFirebaseServiceImpl>());

  // ✅ Register Repository (Pass AuthFirebaseService)
  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl()
  );

  // ✅ Register Use Case (Pass AuthRepository)
  sl.registerSingleton<SignupUseCase>(
    SignupUseCase()
  );
}






