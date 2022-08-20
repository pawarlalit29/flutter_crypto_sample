abstract class HomeState {}

class HomeInitState extends HomeState{}

class HomeDataState extends HomeState{
  List<dynamic> marketList;

  HomeDataState(this.marketList);

}

class HomeErrorState extends HomeState{
  String? errorMessage;

  HomeErrorState(this.errorMessage);
}

class HomeLoadingState extends HomeState{}
