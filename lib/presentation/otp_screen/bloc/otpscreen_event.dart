part of 'otpscreen_bloc.dart';

@immutable
sealed class OtpscreenEvent {}

class Otpcountdown extends OtpscreenEvent {}

class OtpEnterd extends OtpscreenEvent {
  final String otp;

  OtpEnterd({required this.otp});
}
