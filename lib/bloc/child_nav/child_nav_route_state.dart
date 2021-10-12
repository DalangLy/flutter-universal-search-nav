part of 'child_nav_route_bloc.dart';

abstract class ChildRouteState extends Equatable {
  const ChildRouteState();
}

class ChildRouteInitial extends ChildRouteState {
  @override
  List<Object> get props => [];
}

class ChildRouteChanging extends ChildRouteState {
  const ChildRouteChanging();

  @override
  List<Object> get props => [];
}

class ChildRouteChanged extends ChildRouteState {
  final int index;
  const ChildRouteChanged({required this.index,});

  @override
  List<Object> get props => [];
}