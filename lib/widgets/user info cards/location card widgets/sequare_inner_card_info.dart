import 'package:flutter/material.dart';
import 'package:random_user_api/constants/colors.dart';
import 'package:random_user_api/constants/spacing.dart';

class SequareInnerCard extends StatelessWidget {
  const SequareInnerCard({
    super.key,
    required this.label,
    required this.info,
  });

  final String label;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.32,
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      decoration: BoxDecoration(
        // color: Colors.pink.shade200,
        gradient: UColor.whiteLime,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: UColor.darkGrey,
            ),
          ),
          USpace.kV4,
          Text(
            info, // USER NAME HERE
            maxLines: 1,

            style: TextStyle(
              fontSize: 14.5,
              height: 1.3,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
