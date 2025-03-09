import 'package:demo_application/data/models/user_model.dart';
import 'package:demo_application/data/repositories/auth_repository.dart';

class LoginUseCase{
  final AuthRepository _authRepository;
  LoginUseCase(this._authRepository);

  Future<UserModel> execute(String email, String password){
    return _authRepository.login(email, password);
  }
}