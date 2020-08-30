import 'package:testapp/model.dart';
import 'package:testapp/photos_repository.dart';

import 'api_provider.dart';

class OffersRepositoryImpl implements OffersRepository {
  final APIProvider apiProvider;

  OffersRepositoryImpl(this.apiProvider);

  @override
  Future<OffersData> getOffers() => apiProvider.getTrendsPhotos();

  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}
