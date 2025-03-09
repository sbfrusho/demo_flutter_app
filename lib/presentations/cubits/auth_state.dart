import 'package:demo_application/data/models/user_model.dart';

abstract class AuthState {}

class AuthLoading extends AuthState{}

class AuthInitial extends AuthState{}

class AuthSuccess extends AuthState{
  final UserModel user;
  AuthSuccess(this.user);
  
}

class AuthFailure extends AuthState{
  final String error;
  AuthFailure(this.error);
}