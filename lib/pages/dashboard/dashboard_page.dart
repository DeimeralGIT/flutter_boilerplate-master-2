import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../routes/app_router.dart';
import '../../store/dashboard/dashboard_cubit.dart';
import '../../themes/app_colors.dart';
import '../../widgets/custom_app_bar.dart';
import '../landing_summary/landing_summary_page.dart';
import '../offers/offers_page.dart';
import '../profile/profile_page.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late final PageController pageController;
  late final DashboardCubit dashboardCubit;

  final dashboardRoutes = const {
    LandingSummaryRoute.name: LandingSummaryPage(),
    OffersRoute.name: OffersPage(),
    ProfileRoute.name: ProfilePage(),
  };

  @override
  void initState() {
    dashboardCubit = DashboardCubit();
    pageController = PageController();
    super.initState();
  }

  void _dashboardListener(_, state) {
    if (state is DashboardUpdateState) {
      pageController.animateToPage(
        state.page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      bloc: dashboardCubit,
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            titleText:
                'dashboard_page.${dashboardRoutes.keys.toList()[state.page]}'
                    .tr(),
          ),
          body: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: pageController,
                  onPageChanged: dashboardCubit.changePage,
                  children: dashboardRoutes.values.toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 38),
                child: Center(
                  child: BlocListener<DashboardCubit, DashboardState>(
                    listener: _dashboardListener,
                    bloc: dashboardCubit,
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: 3,
                      effect: const WormEffect(
                        activeDotColor: AppColors.brandColor1,
                        dotColor: AppColors.brandColor3,
                        dotHeight: 10,
                        dotWidth: 10,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
