import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:randomuser_bloc/models/random_user_list_res.dart';

@immutable
abstract class HomeState extends Equatable {}

class HomeInitialState extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeLoadingState extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeErrorState extends HomeState {
  final String errorMessage;

  HomeErrorState(this.errorMessage);

  @override
  List<Object?> get props => [];
}

class HomePostListState extends HomeState {
  final List<RandomUser> userList;

  HomePostListState(this.userList);

  @override
  List<Object> get props => [userList];
}

class HomeDeletePostState extends HomeState {
  @override
  List<Object> get props => [];
}