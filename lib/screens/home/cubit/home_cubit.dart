import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_sample/screens/home/cubit/home_state.dart';
import 'package:flutter_crypto_sample/screens/home/model/market_data.dart';
import 'package:http/http.dart' as http;

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitState()) {
    getHomeDataApi();
  }

  Future getHomeDataApi() async {
    var url = Uri.https('api.coingecko.com', 'api/v3/coins/markets', {
      'vs_currency': 'inr',
      'order' : 'market_cap_desc',
      'per_page': '10',
      'page': '1',
      'sparkline': 'false'
    });

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        List<dynamic> list = json.decode(response.body);
        emit(HomeDataState(list));
      } else {
        emit(HomeErrorState("Data not found! ${response.statusCode}"));
      }
  }
}
