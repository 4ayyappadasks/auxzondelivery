part of 'homescreen_bloc.dart';

@immutable
sealed class HomescreenState {}

final class HomescreenInitial extends HomescreenState {}
final class HomescreenActive extends HomescreenState {}
final class HomescreenInActive extends HomescreenState {}
