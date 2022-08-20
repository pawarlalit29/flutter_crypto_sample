import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_sample/screens/detail/cubit/detail_cubit.dart';
import 'package:flutter_crypto_sample/screens/detail/cubit/detail_state.dart';
import 'package:flutter_crypto_sample/screens/home/model/market_data.dart';

class DetailScreen extends StatelessWidget {
  MarketData? marketData;
  DetailScreen(this.marketData,{ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(marketData?.name ?? ""),
      ),
      body: BlocBuilder<DetailCubit,DetailState>(builder: (context, state) {
        if(state is DetailInitState){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }else if (state is DetailDataState){
            return Container(
              child: Text(state.marketData?.name ?? ""),
            );
        } else if (state is DetailErrorState){
          return Center(
             child: Text(state.errorMessage.toString()),
          );
        }else{
          return Container();
        }
      },),
    );
  }
}