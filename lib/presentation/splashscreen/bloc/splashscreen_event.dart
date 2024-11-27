part of 'splashscreen_bloc.dart';

@immutable
sealed class SplashscreenEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class TriggerAnimation extends SplashscreenEvent {}

