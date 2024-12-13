part of 'bottomsheet_bloc.dart';

@immutable
sealed class BottomsheetEvent {}

class SwitchScreenEvent extends BottomsheetEvent{
  SwitchScreenEvent({required this.pageno});
  final int pageno;
}