import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottomsheet_event.dart';
part 'bottomsheet_state.dart';

class BottomsheetBloc extends Bloc<BottomsheetEvent, BottomsheetState> {
  BottomsheetBloc() : super(BottomsheetInitial()) {
    on<BottomsheetEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
