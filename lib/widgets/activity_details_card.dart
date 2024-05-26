import 'package:flutness_first/data/health_details.dart';
import 'package:flutness_first/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetails();

    return GridView.builder(
      itemCount: healthDetails.healthData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, crossAxisSpacing: 15, mainAxisSpacing: 12.0),
      itemBuilder: (context, index) => CustomCard(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(healthDetails.healthData[index].icon,
              width: 30, height: 30),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 4),
            child: Text(healthDetails.healthData[index].value,
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600)),
          ),
          Text(healthDetails.healthData[index].title,
              style: TextStyle(color: Colors.grey[400]))
        ],
      )),
    );
  }
}
