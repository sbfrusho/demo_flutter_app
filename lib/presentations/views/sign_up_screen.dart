import 'package:demo_application/presentations/cubits/auth_cubit.dart';
import 'package:demo_application/presentations/cubits/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is AuthSuccess) {
                  context.go('/home');
                } else if (state is AuthFailure) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(state.error)));
                }
              },
              builder: (context, state) {
                if(state is AuthLoading){
                  return const CircularProgressIndicator();
                }
                return ElevatedButton(onPressed: (){
                  final email = _emailController.text;
                  final password = _passwordController.text;
                  context.read<AuthCubit>().signUp(email, password);
                }, child: Text("Register"));
              },
            )
          ],
        ),
      ),
    );
  }
}
