import 'dart:async';
import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_connection_checker/simple_connection_checker.dart';


enum InternetConnectionState{Initial,Connected,Disconnected}

class InternetConnectionCubit extends Cubit<InternetConnectionState>{
SimpleConnectionChecker? _simpleConnectionChecker;  
StreamSubscription? connectionSubcription;

InternetConnectionCubit() : super (InternetConnectionState.Initial){
  _simpleConnectionChecker = SimpleConnectionChecker()..setLookUpAddress("google.com");
  connectionSubcription = _simpleConnectionChecker?.onConnectionChange.listen((event) {
    if(event){
      emit(InternetConnectionState.Connected);
    }else{
      emit(InternetConnectionState.Disconnected);
    }
  });
}

@override
  Future<void> close() {
    // TODO: implement close
    connectionSubcription?.cancel();
    return super.close();
  }

}