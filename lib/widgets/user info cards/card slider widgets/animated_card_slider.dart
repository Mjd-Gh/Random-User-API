import 'package:flutter/material.dart';
import 'package:random_user_api/model/user_model.dart';
import 'package:random_user_api/widgets/user info cards/card slider widgets/card_slider.dart';

class AnimatedCardsSlider extends StatefulWidget {
  const AnimatedCardsSlider(
      {super.key,
      required this.user,
      required this.index,
      required this.showMoreInfo});

  final User user;
  final int index;
  final bool showMoreInfo;

  @override
  State<AnimatedCardsSlider> createState() => _AnimatedCardsSliderState();
}

class _AnimatedCardsSliderState extends State<AnimatedCardsSlider> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 1000),
      reverseDuration: const Duration(milliseconds: 500),
      transitionBuilder: (child, animation) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOutBack;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
      //Show cards when user need more information using Flag 
      child: widget.showMoreInfo
          ? CardsSlider(
              user: widget.user,
              index: widget.index,
            )
          : const SizedBox.shrink(),
    );
  }
}
