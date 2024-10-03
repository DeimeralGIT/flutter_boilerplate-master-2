part of 'loading_cubit.dart';

abstract class LoadingState {}

class LoadingInitialState extends LoadingState {}

class LoadingStartedState extends LoadingState {}

class LoadingFinishedState extends LoadingState {}
