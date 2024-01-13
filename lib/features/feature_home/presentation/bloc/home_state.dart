part of 'home_bloc.dart';
class HomeState{
  PageStatus pageStatus;
  HomeState({required this.pageStatus});
  HomeState copyWith(
      PageStatus? pageStatus
      ){
    return HomeState(pageStatus: pageStatus??this.pageStatus);
  }
}
