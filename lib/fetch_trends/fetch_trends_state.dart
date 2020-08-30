part of 'fetch_trends_bloc.dart';

@immutable
abstract class FetchTrendsState {}

class InitialFetchTrendsState extends FetchTrendsState {}

class LoadingFetchTrendsState extends FetchTrendsState {}

class LoadedFetchTrendsState extends FetchTrendsState {
  final OffersData data;

  LoadedFetchTrendsState(this.data);

  LoadedFetchTrendsState copyWith({
    OffersData data,
  }) {
    return LoadedFetchTrendsState(
      data ?? this.data,
    );
  }

  @override
  List<Object> get props => [data];

  // @override
  // String toString() =>
  //     'LoadedFetchTrendsState { posts: ${list.length}, hasReachedMax: $hasReachedMax }';
}

class ErrorFetchTrendsState extends FetchTrendsState {}
