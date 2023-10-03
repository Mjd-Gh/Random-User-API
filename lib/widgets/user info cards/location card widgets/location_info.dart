// ignore_for_file: unnecessary_string_interpolations
import 'package:flutter/material.dart';
import 'package:random_user_api/constants/colors.dart';
import 'package:random_user_api/constants/spacing.dart';
import 'package:random_user_api/model/user_model.dart';
import 'package:random_user_api/widgets/user info cards/innerCardInfo.dart';
import 'package:random_user_api/widgets/user info cards/location card widgets/row_of_seq_card.dart';

class LocationInfoCard extends StatelessWidget {
  const LocationInfoCard({
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
                RowOfSeqCard(
                  label1: 'Country',
                  info1: '${user.results?[index].location?.country ?? " "}',
                  label2: 'City',
                  info2: '${user.results?[index].location?.city ?? " "} ',
                ),
                USpace.kV8,
                RowOfSeqCard(
                  label1: 'State',
                  info1: '${user.results?[index].location?.state ?? " "}',
                  label2: 'Postcode',
                  info2: '${user.results?[index].location?.postcode ?? " "}',
                ),
                USpace.kV16,
                InnerCardInfo(
                  label: "Street ",
                  info:
                      "${user.results?[index].location?.street?.name ?? " "} - No.${user.results?[index].location?.street?.number ?? " "}",
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
                Icons.location_on_outlined,
                size: 45,
                color: UColor.darkGrey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
