import 'package:alisons/Bloc/Home_bloc/home_event.dart';
import 'package:alisons/Bloc/Home_bloc/home_state.dart';
import 'package:alisons/services/HomeApi/HomeApi.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeApi homeApi = HomeApi();

  HomeBloc() : super(HomeInitial()) {
    on<FetchHomeData>((event, emit) async {
      emit(HomeLoading());
      try {
        final data = await homeApi.getHomeData();

        if (data['success'] == 1 || data['success'] == true) {
          emit(HomeLoaded(data));
        } else {
          emit(HomeError(data['message'] ?? "Failed to load data"));
        }
      } catch (e) {
        emit(HomeError(e.toString()));
      }
    });
  }
}