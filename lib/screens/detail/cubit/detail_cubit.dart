import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_sample/screens/detail/cubit/detail_state.dart';
import 'package:flutter_crypto_sample/screens/detail/model/market_data_detail.dart';
import 'package:flutter_crypto_sample/screens/home/model/market_data.dart';
import 'package:http/http.dart' as http;

class DetailCubit extends Cubit<DetailState> {
  MarketData? marketData;

  DetailCubit(this.marketData) : super(DetailInitState()){
    getDataApi(marketData?.id ?? "");
  }

  Future getDataApi(String? id) async {
    var url = Uri.https('api.coingecko.com', 'api/v3/coins/$id',{
      "localization" : "false"
    });

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        MarketDataDetails marketData = MarketDataDetails.fromJson(json.decode(response.body));
        emit(DetailDataState(marketData));
      } else {
        emit(DetailErrorState("Data not found! ${response.statusCode}"));
      }
  }
}