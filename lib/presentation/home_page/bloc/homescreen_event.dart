part of 'homescreen_bloc.dart';

@immutable
sealed class HomescreenEvent {}

class togglestatus extends HomescreenEvent {
  togglestatus({required this.status});
  final String status;
}

class changebg extends HomescreenEvent{
  changebg({required this.status});
  final String status;
}