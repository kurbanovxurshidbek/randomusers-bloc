
import 'package:bloc/bloc.dart';

import '../services/http_service.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  HomeBloc() : super(HomeInitialState()) {
    on<LoadRandomUserListEvent>(_onLoadRandomUserList);
  }

  Future<void> _onLoadRandomUserList(LoadRandomUserListEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    var response = await Network.GET(Network.API_RANDOM_USER_LIST, Network.paramsRandomUserList(0));
    if (response != null) {
      var results = Network.parseRandomUserList(response).results;
      emit(HomePostListState(results));
    } else {
      emit(HomeErrorState("Couldn't fetch posts"));
    }
  }

}