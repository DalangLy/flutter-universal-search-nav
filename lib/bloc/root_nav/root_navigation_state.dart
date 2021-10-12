part of 'root_navigation_bloc.dart';

abstract class RootNavigationState extends Equatable {
  const RootNavigationState();
}

class RootNavigationInitial extends RootNavigationState {
  @override
  List<Object> get props => [];
}

class RouteChanging extends RootNavigationState {
  const RouteChanging();

  @override
  List<Object> get props => [];
}

class RouteChanged extends RootNavigationState {
  final int index;
  const RouteChanged({required this.index,});

  @override
  List<Object> get props => [];
}