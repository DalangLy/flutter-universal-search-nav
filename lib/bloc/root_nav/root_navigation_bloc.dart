import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'root_navigation_event.dart';
part 'root_navigation_state.dart';

class RootNavigationBloc extends Bloc<RootNavigationEvent, RootNavigationState> {
  RootNavigationBloc() : super(RootNavigationInitial()) {
    on<RootNavigationEvent>((event, emit) {
      if(event is ChangeRoute){
        emit(const RouteChanging());
        emit(RouteChanged(index: event.index));
      }
    });
  }
}
