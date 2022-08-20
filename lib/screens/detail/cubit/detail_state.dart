import 'package:flutter_crypto_sample/screens/detail/model/market_data_detail.dart';
import 'package:flutter_crypto_sample/screens/home/model/market_data.dart';

abstract class DetailState {}

class DetailInitState extends DetailState{}

class DetailErrorState extends DetailState{
  String? errorMessage;

  DetailErrorState(this.errorMessage);

}

class DetailDataState extends DetailState{
  MarketDataDetails? marketData;

  DetailDataState(this.marketData);
}