import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happy_shop/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:happy_shop/screens/auth/views/welcome_screen.dart';
import 'package:happy_shop/screens/home/views/homeScreen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "happy Shop",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.light(
              background: Colors.green.shade100,
              onBackground: Colors.black,
              primary: Colors.blue,
              onPrimary: Colors.white)),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state.status == AuthenticationStatus.authenticated) {
            return Homescreen();
          } else {
            return WelcomeScreen();
          }
        },
      ),
    );
  }
}
