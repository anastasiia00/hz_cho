import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:hz_cho/views/main_view.dart';

class OnboardingView extends StatelessWidget {
  OnboardingView({super.key});

  final pages = [
    PageModel(
      color: const Color(0xFFD6536D),
      imageAssetPath: 'assets/01.png',
      title: 'Welcome to Your Supportive Space',
      body:
          'We\'re glad you\'re here! Our app is designed to provide you with the emotional support you need',
      doAnimateImage: true,
    ),
    PageModel(
      color: const Color(0xFFEFB11D),
      imageAssetPath: 'assets/02.png',
      title: 'Take a Special Test',
      body:
          'Start by taking a special test designed to assess your emotional well-being',
      doAnimateImage: true,
    ),
    PageModel(
      color: const Color(0xFFFA2B6C),
      imageAssetPath: 'assets/03.png',
      title: 'Unlock Your Emotional Card',
      body:
          'Once you\'ve completed the test, you\'ll receive your very own Emotional Support Card',
      doAnimateImage: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OverBoard(
        allowScroll: true,
        pages: pages,
        showBullets: true,
        skipCallback: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const MainView(),
            ),
          );
        },
        finishCallback: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const MainView(),
            ),
          );
        },
      ),
    );
  }
}
