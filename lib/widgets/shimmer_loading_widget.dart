import 'package:flutter/material.dart';
import 'package:random_user_api/constants/spacing.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLodingWidgets extends StatelessWidget {
  const ShimmerLodingWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.46,
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundColor: const Color(0xff419197),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            USpace.kV16,
            const Text(
              "User Name", //First & last name
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            USpace.kV8,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: const Color(0xff12486B),
                      borderRadius: BorderRadius.circular(6)),
                  child: const Text(
                    "Gender ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 235, 234, 234),
                    ),
                  ),
                ),
                USpace.kH8,
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: const Color(0xff78D6C6),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    "Age   ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
