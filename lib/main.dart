
import 'package:alisons/Bloc/Home_bloc/home_bloc.dart';
import 'package:alisons/Bloc/Login_bloc/login_bloc.dart';
import 'package:alisons/screen/Splansh%20Screen/SplanshScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>LoginBloc()),
        BlocProvider(create: (context)=>HomeBloc()), // Just create, don't fetch yet
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
