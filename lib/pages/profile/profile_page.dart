import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../widgets/content_background_card.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 23,
          horizontal: 21,
        ),
        child: ContentBackgroundCard(
          child: ListView(
            children: [],
          ),
        ),
      ),
    );
  }
}
