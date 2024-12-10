import 'package:auxzondeliveryapp/common/textfont/textfont.dart';
import 'package:auxzondeliveryapp/presentation/login_page/ui/login_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    Widget buildImage(String assetName) {
      return SizedBox.expand(
        child: Image.asset(
          assetName,
          fit: BoxFit.cover,
        ),
      );
    }

    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      infiniteAutoScroll: true,
      pages: [
        PageViewModel(
          title: "Book a ride in seconds",
          body: "Choose your destination, select a ride, and you're ready to go.",
          image: buildImage("assets/splashimage1.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Your safety is our priority",
          body: "All drivers are verified, and rides are monitored for your peace of mind.",
          image: buildImage("assets/splashimage2.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Track your orders",
          body: "Track your orders.",
          image: buildImage("assets/splashimage3.png"),
          decoration: pageDecoration,
        ),
      ],
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginScreenWrapper()),
        );
      },
      onSkip: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginScreenWrapper()),
        );
      },
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      skip: const TextThemedel(
        text: "skip",
        color: Color(0xFFFFFFFF),
        fontWeight: FontWeight.bold,
      ),
      next: const Icon(Icons.arrow_forward, color: Color(0xFFFFFFFF)),
      done: const TextThemedel(
        text: "Done",
        color: Color(0xFFFFFFFF),
        fontWeight: FontWeight.bold,
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        activeColor: Color(0xFF349F52),
        size: Size(10.0, 10.0),
        color: Color(0xFFFFFFFF),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Color(0xFF14411E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
