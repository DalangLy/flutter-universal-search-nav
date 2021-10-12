part of 'root_navigation_bloc.dart';

abstract class RootNavigationEvent extends Equatable {
  const RootNavigationEvent();
}

class ChangeRoute extends RootNavigationEvent {
  final int index;
  const ChangeRoute({required this.index,});

  @override
  List<Object> get props => [];
}