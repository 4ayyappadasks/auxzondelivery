import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'homescreen_event.dart';
part 'homescreen_state.dart';

class HomescreenBloc extends Bloc<HomescreenEvent, HomescreenState> {
  HomescreenBloc() : super(Homescreenstatusonline(status: "online")) {
    on<togglestatus>((event, emit) {
      if (state is Homescreenstatusonline) {
        emit(Homescreenstsusoffline(status: event.status));
        print("User is offline");
      } else if (state is Homescreenstsusoffline) {
        emit(Homescreenstatusonline(status: event.status));
        print("User is online");
      }
    });

    on<changebg>((event, emit) {
      if (state is bgstatusonline) {
        emit(bgstsusoffline(status: event.status));
        print("User is offline");
      } else if (state is bgstsusoffline) {
        emit(bgstsusoffline(status: event.status));
        print("User is online");
      }
    });
  }
}

