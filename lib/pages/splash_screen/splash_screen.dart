import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../providers/screen_service.dart';
import '../../routes/app_router.dart';
import '../../utils/assets.dart';
import '../../utils/storage_utils.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    checkSession();

    return Scaffold(
      body: Center(
        child: 'assets/images/main_logo.svg'.svg(fit: BoxFit.fitWidth),
      ),
    );
  }

  Future<void> checkSession() async {
    await Future.delayed(const Duration(seconds: 3));
    await router.popAndPush(const DashboardRoute());
    // final _token = await StorageUtils.getAccessToken();
    // if (_token != null) {
    //   await router.popAndPush(const LoginRoute());
    // } else {
    //   await router.popAndPush(const DashboardRoute());
    // }
  }
}
