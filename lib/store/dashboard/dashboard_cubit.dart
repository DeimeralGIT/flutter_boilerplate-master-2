import 'package:bloc/bloc.dart';
part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardInitialState());
  void changePage(int page) {
    emit(DashboardUpdateState(page: page));
  }
}
