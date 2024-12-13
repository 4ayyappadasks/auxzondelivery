import 'package:auxzondeliveryapp/common/color/color.dart';
import 'package:auxzondeliveryapp/common/textfont/textfont.dart';
import 'package:auxzondeliveryapp/main.dart';
import 'package:auxzondeliveryapp/presentation/history/ui/historyScreen.dart';
import 'package:auxzondeliveryapp/presentation/profile/widgets/profilecard/profilecard.dart';
import 'package:auxzondeliveryapp/presentation/profile/widgets/profiletabs/profiletabs.dart';
import 'package:auxzondeliveryapp/presentation/splashscreen/ui/splashscreen.dart';
import 'package:flutter/material.dart';

class ProfilescreenWrapper extends StatelessWidget {
  const ProfilescreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const Profilescreen();
  }
}

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bgimg.png"), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: MyApp.height * .09,
            ),
            const Profilecard(
              profileimg: "assets/contacts.png",
              profilename: "Navien Babu",
              profilenumber: 123456789,
              profilerating: 1.5,
            ),
            SizedBox(
              height: MyApp.height * .02,
            ),
            Profiletabs(
              editfuncction: () {},
              privacyfuncction: () {},
              historyfuncction: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => HistoryscreenWidget(),
                ));
              },
              faqfuncction: () {},
              logoutfuncction: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => SplashscreenWrapper(),));
              },

              ///
              faqicon: Icons.question_mark_outlined,
              historyicon: Icons.history,
              privacyicon: Icons.privacy_tip_sharp,
              editprofileicon: Icons.account_circle_outlined,
              logouticon: Icons.logout,

              ///
              editprofiletext: "Edit Profile",
              privacytext: "Privacy Policies",
              historytext: "History",
              faqtext: "F.A.Q",
              logouttext: 'Log out',

              ///
            )
          ],
        ),
      ),
    );
  }
}
