import 'package:demo_application/data/repositories/auth_repository.dart';
import 'package:demo_application/presentations/cubits/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState>{
  final AuthRepository _authRepository;
  AuthCubit(this._authRepository):super(AuthInitial());

  Future<void> login(String email, String password) async{
    emit(AuthLoading());
    try{
      final user = await _authRepository.login(email, password);
    }
    catch(e){
      emit(AuthFailure(e.toString()));
    }
  }

  Future<void> signUp(String email, String password) async{
    emit(AuthLoading());
    try{
      final user = await _authRepository.signUp(email, password);
    }
    catch(e){
      emit(AuthFailure(e.toString()));
    }
  }
}