part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class LoadDashboardEvent extends HomeEvent{
final String cityName;
LoadDashboardEvent(this.cityName);
}
