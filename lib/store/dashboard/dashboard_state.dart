part of 'dashboard_cubit.dart';

abstract class DashboardState {
  DashboardState({required this.page});
  final int page;
}

class DashboardInitialState extends DashboardState {
  DashboardInitialState() : super(page: 0);
}

class DashboardUpdateState extends DashboardState {
  DashboardUpdateState({required super.page});
}
