import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_sample/screens/detail/cubit/detail_cubit.dart';
import 'package:flutter_crypto_sample/screens/detail/cubit/detail_state.dart';
import 'package:flutter_crypto_sample/screens/detail/model/market_data_detail.dart';
import 'package:flutter_crypto_sample/screens/home/model/market_data.dart';

class DetailScreen extends StatelessWidget {
  MarketData? marketData;
  DetailScreen(this.marketData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(marketData?.name ?? ""),
      ),
      body: BlocBuilder<DetailCubit, DetailState>(
        builder: (context, state) {
          if (state is DetailInitState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is DetailDataState) {
            return mainView(state.marketData?? MarketDataDetails());
          } else if (state is DetailErrorState) {
            return Center(
              child: Text(state.errorMessage.toString()),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget mainView(MarketDataDetails marketDataDetails){
    return Container(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child:
                            Image.network(marketDataDetails.image?.large ?? ""),
                      ),
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            height: 100,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "₹${marketDataDetails.marketDataItem?.currentPrice?.inr}",
                                    style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          text: '1Mo ',
                                          style: const TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.black),
                                          children: [
                                        TextSpan(
                                          text:
                                              "${marketDataDetails.marketDataItem?.priceChangePercentage30d}%",
                                          style: TextStyle(
                                            color: ((marketDataDetails
                                                            .marketDataItem
                                                            ?.priceChangePercentage30d ??
                                                        0) >
                                                    0)
                                                ? Colors.green
                                                : Colors.red,
                                          ),
                                        )
                                      ])),
                                  RichText(
                                      text: TextSpan(
                                          text: '1Yr ',
                                          style: const TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.black),
                                          children: [
                                        TextSpan(
                                          text:
                                              "${marketDataDetails.marketDataItem?.priceChangePercentage1y}%",
                                          style: TextStyle(
                                            color: ((marketDataDetails
                                                            .marketDataItem
                                                            ?.priceChangePercentage1y ??
                                                        0) >
                                                    0)
                                                ? Colors.green
                                                : Colors.red,
                                          ),
                                        )
                                      ])),
                                ]),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold
                    ),

                  ),
                  Text(
                    marketDataDetails.description?.en ?? "",
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                    
                  )
                ],
              ),
            );
  }
}
