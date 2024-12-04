part of 'payment_bloc.dart';

@immutable
sealed class PaymentState {}

final class DailyScreen extends PaymentState {}
final class WeaklyScreen extends PaymentState {}
final class MonthlyScreen extends PaymentState {}
