import 'package:auxzondeliveryapp/common/textfont/textfont.dart';
import 'package:auxzondeliveryapp/presentation/login_page/ui/login_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../common/color/color.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    var pageDecoration = PageDecoration(
      titleTextStyle:
          const TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.zero,
      boxDecoration: BoxDecoration(
        color: Colorsdata.white,
      ),
    );

    Widget buildImage(String assetName) {
      return SizedBox.expand(
        child: Image.asset(
          assetName,
          fit: BoxFit.contain,
        ),
      );
    }

    return IntroductionScreen(
      globalBackgroundColor: Colorsdata.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      infiniteAutoScroll: true,
      pages: [
        PageViewModel(
          title: "Shop Fresh Groceries",
          body:
              "Discover fresh fruits, vegetables, and everyday essentials at unbeatable prices.",
          image: buildImage("assets/splashimage1.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Fast & Reliable Delivery",
          body: "Get your groceries delivered to your doorstep within minutes.",
          image: buildImage("assets/splashimage2.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Exclusive Deals & Offers",
          body:
              "Save more with exclusive discounts and daily offers tailored for you.",
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
      done: TextThemedel(
        text: "Done",
        color: Colorsdata.white,
        fontWeight: FontWeight.bold,
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator:  DotsDecorator(
        activeColor: Colorsdata.white,
        size: Size(10.0, 10.0),
        color: Colorsdata.unfocus,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: ShapeDecoration(
        color: Colorsdata.maincolor,
        // gradient: LinearGradient(
        //   colors: [
        //     Colorsdata.maincolor,
        //     Color(0xFFCCFF69),
        //     // Color(0xFFFFEC84),
        //     Colorsdata.maincolor,
        //   ],
        // ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
