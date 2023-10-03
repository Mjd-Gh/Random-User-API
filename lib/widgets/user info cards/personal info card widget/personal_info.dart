import 'package:flutter/material.dart';
import 'package:random_user_api/constants/colors.dart';
import 'package:random_user_api/constants/spacing.dart';
import 'package:random_user_api/model/user_model.dart';
import 'package:random_user_api/utils/functions.dart';
import 'package:random_user_api/widgets/user info cards/innerCardInfo.dart';

class PersonalInfoCard extends StatelessWidget {
  const PersonalInfoCard({
    super.key,
    required this.user,
    required this.index,
  });

  final User user;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            width: MediaQuery.of(context).size.width * 0.77,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: UColor.darkGrey,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 3,
                    blurRadius: 9,
                    color: Colors.grey.shade400,
                    offset: const Offset(3, 5),
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                USpace.kV16,
                InnerCardInfo(
                  label: 'User name',
                  info: " ${user.results?[index].login?.username ?? " "}",
                ), //Send user object here

                USpace.kV16,
                InnerCardInfo(
                  label: "Emaile ",
                  info: user.results?[index].email ?? " ",
                ),

                USpace.kV16,
                InnerCardInfo(
                  label: "Birth date ",
                  info: "${dateConverter("${user.results?[index].dob?.date}")}",
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          left: 20,
          right: 20,
          child: ClipRRect(
            child: CircleAvatar(
              backgroundColor: UColor.lime,
              radius: 35,
              child: Icon(
                Icons.person,
                size: 60,
                color: UColor.darkGrey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
