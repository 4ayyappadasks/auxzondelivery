import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'bottomsheet_event.dart';
part 'bottomsheet_state.dart';

class BottomsheetBloc extends Bloc<BottomsheetEvent, BottomsheetState> {
  BottomsheetBloc() : super(HomeScreen_State()) {
    on<SwitchScreenEvent>((event, emit) {
      if(event.pageno==0)
        {
          emit(HomeScreen_State());
        }
      else if(event.pageno==1)
        {
          emit(paymentScreen_State());
        }
      else if(event.pageno==2)
        {
          emit(BookingScreen_State());
        }
      else if(event.pageno==3)
        {
          emit(ProfileScreen_State());
        }
      else
        {
          emit(HomeScreen_State());
        }
      // switch (event.pageno) {
      //   case 0:
      //
      //     break;
      //   case 1:
      //     emit(paymentScreen_State());
      //     break;
      //   case 2:
      //     emit(BookingScreen_State());
      //     break;
      //   case 3:
      //     emit(ProfileScreen_State());
      //     break;
      //   default:
      //     emit(HomeScreen_State());
      //     break;
      // }
    });
  }
}

