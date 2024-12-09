import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'profilebloc_event.dart';
part 'profilebloc_state.dart';

class ProfileblocBloc extends Bloc<ProfileblocEvent, ProfileblocState> {
  ProfileblocBloc() : super(ProfileblocInitial()) {
    on<ProfileblocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
