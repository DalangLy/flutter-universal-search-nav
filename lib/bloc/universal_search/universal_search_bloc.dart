import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_universal_search/bloc/child_nav/child_nav_route_bloc.dart';
import 'package:test_universal_search/bloc/root_nav/root_navigation_bloc.dart';

part 'universal_search_event.dart';
part 'universal_search_state.dart';

class UniversalSearchBloc extends Bloc<UniversalSearchEvent, UniversalSearchState> {
  final RootNavigationBloc rootNavigationBloc;
  final ChildRouteBloc itemRouteBloc;

  UniversalSearchBloc({required this.rootNavigationBloc, required this.itemRouteBloc,}) : super(UniversalSearchInitial()) {
    on<UniversalSearchEvent>((event, emit) {
      if(event is UniversalChangeRoute){
        rootNavigationBloc.add(ChangeRoute(index: event.index));
        itemRouteBloc.add(const ChangeChildRoute(index: 0));
      }
      else if(event is UniversalChangeParentRoute){
        rootNavigationBloc.add(ChangeRoute(index: event.parentIndex));
        itemRouteBloc.add(ChangeChildRoute(index: event.childIndex));
      }
    });
  }
}