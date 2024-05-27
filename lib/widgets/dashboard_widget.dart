import 'package:flutness_first/widgets/activity_details_card.dart';
import 'package:flutness_first/widgets/header_widget.dart';
import 'package:flutness_first/widgets/line_chart_card.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 18,
        ),
        HeaderWidget(),
        SizedBox(
          height: 18,
        ),
        ActivityDetailsCard(),
        SizedBox(
          height: 18,
        ),
        LineChartCard()
      ],
    );
  }
}
