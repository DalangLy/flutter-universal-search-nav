import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'child_nav_route_event.dart';
part 'child_nav_route_state.dart';

class ChildRouteBloc extends Bloc<ChildRouteEvent, ChildRouteState> {
  ChildRouteBloc() : super(ChildRouteInitial()) {
    on<ChildRouteEvent>((event, emit) {
      if(event is ChangeChildRoute){
        emit(const ChildRouteChanging());
        emit(ChildRouteChanged(index: event.index));
      }
    });
  }
}
