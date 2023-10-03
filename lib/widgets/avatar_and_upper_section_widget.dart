import 'package:flutter/material.dart';
import 'package:random_user_api/constants/colors.dart';
import 'package:random_user_api/constants/spacing.dart';
import 'package:random_user_api/model/user_model.dart';

class AvatarAndUpperInfo extends StatelessWidget {
  const AvatarAndUpperInfo({
    super.key,
    required this.user,
    required this.index,
  });

  final User user;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 70,
          backgroundColor: UColor.mint,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network("${user.results?[index].picture?.large}"),
          ),
        ),
        USpace.kV16,
        Text(
          "${user.results?[index].name?.first} ${user.results?[index].name?.last ?? " "}", //First & last name
          style: const TextStyle(
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
                gradient: UColor.mintLim,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                "${user.results?[index].gender}",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: UColor.darkGrey,
                ),
              ),
            ),
            USpace.kH8,
            Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: UColor.darkGrey,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                "${user.results?[index].dob?.age} years",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: UColor.lightMint,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
