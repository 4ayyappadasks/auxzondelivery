import 'package:auxzondeliveryapp/common/textfont/textfont.dart';
import 'package:auxzondeliveryapp/main.dart';
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
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    // gradient: LinearGradient(
                    //   colors: [
                    //     Color(0xFF0F5D25),
                    //     Color(0xFF1EA23D),
                    //     Color(0xFF8FE1A6),
                    //   ],
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomCenter,
                    // ),
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
                    child: Image.asset("assets/logo1.png"),
                  ),
                ),
                Positioned(
                    right: 0,
                    left: 0,
                    top: MyApp.height * .2,
                    child: const TextThemedel(
                      text: "Delivery Boy",
                      color: Color(0xFF206734),
                      fontSize: 45,
                      textAlign: TextAlign.center,
                    )),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextThemedel(
                          text: "Powered by",
                          color:Color(0xFF206734),
                          fontSize: 10,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.bold,
                        ),
                        TextThemedel(
                          text:  "Auxzon",
                          color: Color(0xFF206734),
                          fontSize: 10,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.bold,
                        ),
                        TextThemedel(
                          text: "©2023",
                          color: Color(0xFF206734),
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
