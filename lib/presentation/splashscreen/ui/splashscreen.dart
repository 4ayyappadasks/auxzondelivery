import 'package:auxzondeliveryapp/common/textfont/textfont.dart';
import 'package:auxzondeliveryapp/main.dart';
import 'package:auxzondeliveryapp/presentation/login_page/ui/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../SplashScreen2/ui/SplashScreen2.dart';
import '../bloc/splashscreen_bloc.dart';

class SplashscreenWrapper extends StatelessWidget {
  const SplashscreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashscreenBloc()..add(TriggerAnimation()),
      child: const Splashscreen(),
    );
  }
}

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashscreenBloc, SplashscreenState>(
      listener: (context, state) {
        if (state is SplashscreenAnimating) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const OnBoardingPage(),
          ));
        }
      },
      child: Scaffold(
        body: BlocBuilder<SplashscreenBloc, SplashscreenState>(
          builder: (context, state) {
            double logoPosition = MyApp.width * .2;
            if (state is SplashscreenLoading) {
              logoPosition = MyApp.width * 1;
            }

            return Stack(
              children: [
                Container(
                  height: MyApp.height,
                  width: MyApp.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF14358B),
                        Color(0xFF1E50A2),
                        Color(0xFF2877CC),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.easeInOut,
                  top: MyApp.height * 0.35,
                  left: logoPosition,
                  child: SizedBox(
                    width: MyApp.height * .3,
                    height: MyApp.height * .3,
                    child: Image.asset("assets/logo.png"),
                  ),
                ),
                Positioned(
                    right: 0,
                    left: 0,
                    top: MyApp.height * .2,
                    child: TextThemedel(
                      text: "Delivery Boy",
                      color: Color(0xFFFFFFFF),
                      fontSize: 45,
                      textAlign: TextAlign.center,
                    )),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        TextThemedel(
                          text: "Powered by",
                          color: Color(0xFFFFFFFF),
                          fontSize: 10,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.bold,
                        ),
                        TextThemedel(
                          text:  "Auxzon",
                          color: Color(0xFFFFFFFF),
                          fontSize: 10,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.bold,
                        ),
                        TextThemedel(
                          text: "©2023",
                          color: Color(0xFFFFFFFF),
                          fontSize: 5,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
