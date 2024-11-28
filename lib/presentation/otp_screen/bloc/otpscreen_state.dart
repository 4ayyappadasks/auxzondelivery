part of 'otpscreen_bloc.dart';

@immutable
sealed class OtpscreenState {}

final class OtpscreenInitial extends OtpscreenState {}

final class Otpscreenenterd extends OtpscreenState {}

final class Otpcountdownstared extends OtpscreenState {
  final int seconds;

  Otpcountdownstared(this.seconds);
}

final class Otpcountdowncompleted extends OtpscreenState {}
