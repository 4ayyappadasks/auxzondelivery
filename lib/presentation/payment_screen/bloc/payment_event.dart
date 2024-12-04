part of 'payment_bloc.dart';

@immutable
sealed class PaymentEvent {}

class Selecttype extends PaymentEvent{
  Selecttype({required this.no});
  final int no;
}
