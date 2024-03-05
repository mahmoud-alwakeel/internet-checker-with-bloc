part of 'internet_bloc.dart';

abstract class InternetState {}

class InternetInitialState extends InternetState {}

class InternetConnectedState extends InternetState {
  final String message;

  InternetConnectedState({required this.message});
}

class NoInternetState extends InternetState {
  final String message;

  NoInternetState({required this.message});
}
