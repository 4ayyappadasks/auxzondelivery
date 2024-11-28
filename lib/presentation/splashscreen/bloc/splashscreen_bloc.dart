import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'splashscreen_event.dart';
part 'splashscreen_state.dart';

class SplashscreenBloc extends Bloc<SplashscreenEvent, SplashscreenState> {
  SplashscreenBloc() : super(SplashscreenInitial()) {
    on<TriggerAnimation>((event, emit) async{
      emit(SplashscreenInitial());
      print("splashscreen initialized");
      emit(SplashscreenLoading());
      print("splashscreen Loading");
      try{
        await Future.delayed(const Duration(seconds: 2),() {
          emit(SplashscreenAnimating());
          print("splashscreen Loaded");
        },);
      }
          catch(e)
      {
        emit(SplashscreenError(errormsg: e.toString()));
        print("splashscreen error");
      }
    });

  }
}
