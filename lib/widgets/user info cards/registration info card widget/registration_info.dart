import 'package:flutter/material.dart';
import 'package:random_user_api/constants/colors.dart';
import 'package:random_user_api/constants/spacing.dart';
import 'package:random_user_api/model/user_model.dart';
import 'package:random_user_api/utils/functions.dart';
import 'package:random_user_api/widgets/user info cards/innerCardInfo.dart';

class RegistrationInfoCard extends StatelessWidget {
  const RegistrationInfoCard({
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
                Center(
                  child: Column(
                    children: [
                      const Text(
                        "Age",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      USpace.kV8,
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                            gradient: UColor.mintLim,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 50, 49, 49),
                                spreadRadius: 3,
                                blurRadius: 6,
                              ),
                            ]),
                        // radius: 30,
                        child: Text(
                          "${user.results?[index].registered?.age ?? " "}",
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: UColor.darkGrey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                USpace.kV32,
                InnerCardInfo(
                  label: "Registration date ",
                  info:
                      "${dateConverter('${user.results?[index].registered?.date}')}",
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
                Icons.app_registration,
                size: 40,
                color: UColor.darkGrey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
