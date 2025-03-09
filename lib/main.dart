import 'package:demo_application/core/router/app_router.dart';
import 'package:demo_application/data/repositories/auth_repository.dart';
import 'package:demo_application/presentations/cubits/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit(AuthRepository())),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Auth App',
        routerConfig: AppRouter().router,
      ),
    );
  }
}