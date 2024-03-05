import 'package:check_internet_app/bloc/internet_bloc.dart';
import 'package:check_internet_app/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(CheckInternetApp());
}

class CheckInternetApp extends StatelessWidget {
  const CheckInternetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetBloc(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
