part of 'universal_search_bloc.dart';

abstract class UniversalSearchEvent extends Equatable {
  const UniversalSearchEvent();
}

class UniversalChangeRoute extends UniversalSearchEvent {
  final int index;
  const UniversalChangeRoute({required this.index,});

  @override
  List<Object> get props => [];
}

class UniversalChangeParentRoute extends UniversalSearchEvent {
  final int parentIndex;
  final int childIndex;
  const UniversalChangeParentRoute({required this.parentIndex, required this.childIndex,});

  @override
  List<Object> get props => [];
}