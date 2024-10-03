import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../widgets/content_background_card.dart';

@RoutePage()
class OffersPage extends StatefulWidget {
  const OffersPage({Key? key}) : super(key: key);

  @override
  _OffersPageState createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
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
