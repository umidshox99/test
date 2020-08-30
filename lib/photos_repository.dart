import 'package:equatable/equatable.dart';

import 'model.dart';

abstract class OffersRepository extends Equatable {
  Future<OffersData> getOffers();
}
