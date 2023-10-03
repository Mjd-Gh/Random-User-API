import 'package:flutter/material.dart';
import 'package:random_user_api/constants/spacing.dart';
import 'package:random_user_api/widgets/user info cards/location card widgets/sequare_inner_card_info.dart';

class RowOfSeqCard extends StatelessWidget {
  const RowOfSeqCard({
    super.key,
    required this.label1,
    required this.info1,
    required this.label2,
    required this.info2,
  });

  final String label1;
  final String info1;
  final String label2;
  final String info2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SequareInnerCard(
            label: label1,
            info: info1,
          ),
          USpace.kH8,
          SequareInnerCard(
            label: label2,
            info: info2,
          ),
        ],
      ),
    );
  }
}
