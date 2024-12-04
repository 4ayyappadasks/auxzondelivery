import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'payment_event.dart';
part 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(DailyScreen()) {
    on<Selecttype>((event, emit) {
      switch (event.no) {
        case 0:
          emit(DailyScreen());
          break;
        case 1:
          emit(WeaklyScreen());
          break;
        case 2:
          emit(MonthlyScreen());
          break;
        default:
          emit(DailyScreen());
          break;
      }
    });
  }
}
