import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:random_user_api/constants/colors.dart';
import 'package:random_user_api/model/user_model.dart';
import 'package:random_user_api/widgets/user info cards/personal info card widget/personal_info.dart';
import 'package:random_user_api/widgets/user info cards/location card widgets/location_info.dart';
import 'package:random_user_api/widgets/user info cards/registration info Card widget/registration_info.dart';

class CardsSlider extends StatefulWidget {
  const CardsSlider({super.key, required this.user, required this.index});
  final User user;
  final int index;
  @override
  State<CardsSlider> createState() => _CardsSliderState();
}

class _CardsSliderState extends State<CardsSlider> {
  int _currentIndex = 0;
  bool showMoreInfo = false;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //-------------------- Cards Slider ---------------
        CarouselSlider(
          carouselController: _controller,
          items: [
            PersonalInfoCard(
              user: widget.user,
              index: widget.index,
            ),
            RegistrationInfoCard(
              user: widget.user,
              index: widget.index,
            ),
            LocationInfoCard(
              user: widget.user,
              index: widget.index,
            )
          ],
          options: CarouselOptions(
            height: 400,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index; // For chanhing bottom dots
              });
            },
          ),
        ),

        // Dots Row
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return Container(
              width: 8.0,
              height: 8.0,
              margin: const EdgeInsets.symmetric(horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? UColor.darkMint : Colors.grey,
              ),
            );
          }),
        ),
      ],
    );
  }
}
