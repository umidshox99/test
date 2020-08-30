import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:testapp/model.dart';
import 'package:testapp/photos_repository_impl.dart';

part 'fetch_trends_event.dart';
part 'fetch_trends_state.dart';

class FetchTrendsBloc extends Bloc<FetchTrendsEvent, FetchTrendsState> {
  final OffersRepositoryImpl _repositoryImpl;

  FetchTrendsBloc(this._repositoryImpl) : super(null);

  @override
  FetchTrendsState get initialState => InitialFetchTrendsState();

  @override
  Stream<FetchTrendsState> mapEventToState(FetchTrendsEvent event) async* {
    OffersData list;
    if (event is FetchTrendsEvent) {
      yield LoadingFetchTrendsState();
      try {
        list = await _repositoryImpl.getOffers();
        yield LoadedFetchTrendsState(list);
      } catch (e) {
        yield ErrorFetchTrendsState();
      }
    }
  }
}
