import 'package:flutter/material.dart';
import 'package:random_user_api/constants/colors.dart';
import 'package:random_user_api/widgets/main_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              child: Container(
                decoration: const BoxDecoration(gradient: UColor.whitMint),
                child: const MainWidget(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
