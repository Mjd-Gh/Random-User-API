import 'package:flutter/material.dart';
import 'package:random_user_api/constants/colors.dart';
import 'package:random_user_api/constants/spacing.dart';
import 'package:random_user_api/model/user_model.dart';
import 'package:random_user_api/widgets/avatar_and_upper_section_widget.dart';
import 'package:random_user_api/widgets/main_widget.dart';
import 'user info cards/card slider widgets/animated_card_slider.dart';

class WholeUserInfoWidget extends StatefulWidget {
  const WholeUserInfoWidget({
    super.key,
    required this.user,
    required this.index,
  });

  final User user;
  final int index;
  @override
  State<WholeUserInfoWidget> createState() => WholeUserInfoWidgetState();
}

class WholeUserInfoWidgetState extends State<WholeUserInfoWidget> {
  bool showMoreInfo = false;
  String detailsButtonTitle = 'More details';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  context
                      .findAncestorStateOfType<MainWidgetState>()
                      ?.setState(() {});
                },
                icon: const CircleAvatar(
                  backgroundColor: UColor.darkGrey,
                  radius: 30,
                  child: Icon(
                    Icons.refresh,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    showMoreInfo = !showMoreInfo;
                    if (showMoreInfo) {
                      detailsButtonTitle = 'Less details';
                    } else {
                      detailsButtonTitle = 'More details';
                    }
                  });
                },
                child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: UColor.darkGrey,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            spreadRadius: 4,
                            blurRadius: 7,
                            offset: const Offset(0, 3)),
                      ],
                    ),
                    child: Text(
                      detailsButtonTitle,
                      style: const TextStyle(
                        color: UColor.lightMint,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ------------------- Pic, Name, Gender, Age ------------
            // Add animation to upper section movement 
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              alignment: showMoreInfo
                  ? Alignment.center
                  : AlignmentDirectional.topCenter,
              padding: !showMoreInfo
                  ? const EdgeInsets.only(top: 150)
                  : const EdgeInsets.only(top: 0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: AvatarAndUpperInfo(
                  user: widget.user,
                  index: widget.index,
                ),
              ),
            ),
            USpace.kV16,
            AnimatedCardsSlider(
              user: widget.user,
              index: widget.index,
              showMoreInfo: showMoreInfo,
            ),
          ],
        ),
      ],
    );
  }
}
