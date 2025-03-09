import 'package:demo_application/core/network/api_client.dart';
import 'package:demo_application/core/network/api_endpoints.dart';
import 'package:demo_application/data/models/user_model.dart';

class AuthRepository {
  final ApiClient _apiClient = ApiClient();

  Future<UserModel> login(String email, String password)async{
    final response = await _apiClient.post(ApiEndpoints.login,{
      "email" : email,
      "password" : password,
    });
    return UserModel.fromJson(response.data);
  }

  Future<UserModel> signUp(String email, String password) async{
    final respose = await _apiClient.post(ApiEndpoints.signUp, {
      "email" : email,
      "password" : password,
    });
    return UserModel.fromJson(respose.data);
  }
}