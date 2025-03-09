import 'package:demo_application/data/models/user_model.dart';
import 'package:demo_application/data/repositories/auth_repository.dart';

class SignupUsecase {

  final AuthRepository _authRepository;
  SignupUsecase(this._authRepository);

  Future<UserModel> execute(String email, String password){
    return _authRepository.signUp(email, password);
  }
}