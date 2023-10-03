import 'package:flutter/material.dart';
import 'package:random_user_api/constants/colors.dart';
import 'package:random_user_api/service/api.dart';
import 'package:random_user_api/widgets/shimmer_loading_widget.dart';
import 'package:random_user_api/widgets/whole_user_info_widget.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({
    super.key,
  });

  @override
  State<MainWidget> createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: UserService().getUser(), // Get info from API
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: ShimmerLodingWidgets(),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            var user = snapshot.data;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return WholeUserInfoWidget(
                  user: user!,
                  index: index,
                );
              },
            );
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Data Access Problems",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {});
                    },
                    icon: const Icon(
                      Icons.refresh,
                      size: 30,
                      color: UColor.mint,
                    ),
                  )
                ],
              ),
            );
          }
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
