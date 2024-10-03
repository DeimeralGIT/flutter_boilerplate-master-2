import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../widgets/content_background_card.dart';

@RoutePage()
class LandingSummaryPage extends StatefulWidget {
  const LandingSummaryPage({
    Key? key,
  }) : super(key: key);

  @override
  _LandingSummaryPageState createState() => _LandingSummaryPageState();
}

class _LandingSummaryPageState extends State<LandingSummaryPage> {
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
