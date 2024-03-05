import 'package:check_internet_app/bloc/internet_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internet checker'),
      ),
      body: Center(
        child: BlocBuilder<InternetBloc, InternetState>(
          builder: (context, state) {
            if (state is InternetConnectedState) {
              return Text(state.message);
            } else if (state is NoInternetState) {
              return Text(state.message);
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }

  Widget CustomTextWidget(String message) {
    return Text(message);
  }
}
