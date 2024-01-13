import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:digiex24/features/feature_home/presentation/bloc/page_status.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState(pageStatus: PageLoading())) {
    //every where we call HomeEvent,this bloc will run
    on<LoadDashboardEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
