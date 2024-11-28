part of 'homescreen_bloc.dart';

@immutable
sealed class HomescreenState {}

final class HomescreenInitial extends HomescreenState {}
final class Homescreenstatusonline extends HomescreenState {
  Homescreenstatusonline({required this.status});
  final String status;
}
final class Homescreenstsusoffline extends HomescreenState {
  Homescreenstsusoffline({required this.status});
  final String status;
}

final class bgstatusonline extends HomescreenState {
  bgstatusonline({required this.status});
  final String status;
}
final class bgstsusoffline extends HomescreenState {
  bgstsusoffline({required this.status});
  final String status;
}