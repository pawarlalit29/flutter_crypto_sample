import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crypto_sample/cubit/internet_connection_cubit.dart';
import 'package:flutter_crypto_sample/screens/detail/cubit/detail_cubit.dart';
import 'package:flutter_crypto_sample/screens/detail/detail_screen.dart';
import 'package:flutter_crypto_sample/screens/home/cubit/home_cubit.dart';
import 'package:flutter_crypto_sample/screens/home/cubit/home_state.dart';
import 'package:flutter_crypto_sample/screens/home/model/market_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crypto App"),
        centerTitle: true,
      ),
      body: BlocListener<InternetConnectionCubit,InternetConnectionState>(listener: (context, state) {
        if(state == InternetConnectionState.Connected){
          const SnackBar(content: Text("Your device is online"),);
        }

        if(state == InternetConnectionState.Disconnected){
          const SnackBar(content: Text("Your device is offline"),);
        }
      },
      child:  BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeDataState && state.marketList.isNotEmpty) {
          return RefreshIndicator(
            onRefresh: () async{
              BlocProvider.of<HomeCubit>(context).getHomeDataApi();
            },
            child: ListView.builder(
              itemCount: state.marketList.length,
              physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()
                  ),
              itemBuilder: (context, index) {
                MarketData? marketData = MarketData.fromJson(state.marketList[index]);
                return ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return BlocProvider(create: (context) => DetailCubit(marketData),
                      child: DetailScreen(marketData),);
                    },));
                  },
                  title: Text(marketData.name ?? "",overflow: TextOverflow.ellipsis),
                  leading: Image.network(marketData.image ?? ""),
                  contentPadding: const EdgeInsets.all(10.0),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("₹${marketData.currentPrice}",style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                      ),),
                      Text("${marketData.priceChangePercentage24h}%",
                      style: TextStyle(
                        color: (marketData.priceChangePercentage24h > 0) ? Colors.green : Colors.red,
                      ),)
                    ],
                  ),
                );
              },
            ),
          );
        } else if (state is HomeErrorState) {
          return Center(
            child: Text(state.errorMessage ?? ""),
          );
        }else if(state is HomeInitState){
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
           return const Center(
            child: Text("No Data Found!"),
          );
        }
        },),
    ));
  }
}
