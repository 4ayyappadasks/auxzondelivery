import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'otpscreen_event.dart';
part 'otpscreen_state.dart';

class OtpscreenBloc extends Bloc<OtpscreenEvent, OtpscreenState> {
  OtpscreenBloc() : super(OtpscreenInitial()) {
    on<OtpEnterd>(_onOtpEntered);
    on<Otpcountdown>(_onOtpCountdown);
  }

  void _onOtpEntered(OtpEnterd event, Emitter<OtpscreenState> emit) {
    emit(Otpscreenenterd());
    add(Otpcountdown());
  }

  Future<void> _onOtpCountdown(Otpcountdown event, Emitter<OtpscreenState> emit) async {
    emit(Otpcountdownstared(5)); // Initial 30 seconds countdown.
    for (int i = 4; i >= 0; i--) {
      await Future.delayed(const Duration(seconds: 1));
      emit(Otpcountdownstared(i));
    }
    emit(Otpcountdowncompleted());
  }
}
