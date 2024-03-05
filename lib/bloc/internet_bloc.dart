
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'internet_event.dart';
part 'internet_state.dart';
class InternetBloc extends   Bloc<InternetEvent, InternetState> {
  StreamSubscription? subscription;
  InternetBloc() : super(InternetInitialState()) {
    on<InternetEvent>((event, emit) {
      if (event is InternetConnectionEvent) {
        emit(InternetConnectedState(message: "Innternet Connected"));
      } else {
        emit(NoInternetState(message: "No Internet Connection"));
      }
    });
    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) { 
      if(result == ConnectivityResult.wifi || result  == ConnectivityResult.mobile) {
        add(InternetConnectionEvent());
      } else {
        add(NoInternetConnectionEvent());
      }
    });
  }
}