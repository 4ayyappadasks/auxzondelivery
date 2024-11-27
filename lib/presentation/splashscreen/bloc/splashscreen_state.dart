part of 'splashscreen_bloc.dart';

@immutable
sealed class SplashscreenState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

final class SplashscreenInitial extends SplashscreenState {}
final class SplashscreenLoading extends SplashscreenState {}
final class SplashscreenAnimating extends SplashscreenState {}
final class SplashscreenError extends SplashscreenState {
  SplashscreenError({required this.errormsg});
  final String errormsg;
@override
// TODO: implement props
List<Object?> get props => [errormsg];
}

