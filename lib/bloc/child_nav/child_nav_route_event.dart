part of 'child_nav_route_bloc.dart';

abstract class ChildRouteEvent extends Equatable {
  const ChildRouteEvent();
}

class ChangeChildRoute extends ChildRouteEvent {
  final int index;
  const ChangeChildRoute({required this.index,});

  @override
  List<Object> get props => [];
}