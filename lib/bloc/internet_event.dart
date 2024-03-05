part of 'internet_bloc.dart';

abstract class InternetEvent {}

class InternetConnectionEvent extends InternetEvent {}

class NoInternetConnectionEvent extends InternetEvent {}