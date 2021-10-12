part of 'universal_search_bloc.dart';

abstract class UniversalSearchState extends Equatable {
  const UniversalSearchState();
}

class UniversalSearchInitial extends UniversalSearchState {
  @override
  List<Object> get props => [];
}
