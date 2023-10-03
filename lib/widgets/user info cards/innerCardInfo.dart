// ignore: file_names
import 'package:flutter/material.dart';
import 'package:random_user_api/constants/colors.dart';
import 'package:random_user_api/constants/spacing.dart';

class InnerCardInfo extends StatelessWidget {
  const InnerCardInfo({
    super.key,
    required this.label,
    required this.info,
  });

  final String label;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 7,
            color: Color.fromARGB(255, 64, 63, 63),
            offset: Offset(0, 5),
          )
        ],
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: UColor.darkGrey,
            ),
          ),
          USpace.kV4,
          Padding(
            padding: const EdgeInsets.only(left: 7.0),
            child: Text(
              info, // USER NAME HERE
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                height: 1.3,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
