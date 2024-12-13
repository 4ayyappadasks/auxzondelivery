import 'package:flutter/material.dart';

import '../../../../common/color/color.dart';
import '../../../../common/textfont/textfont.dart';
import '../../../../main.dart';

class Profilecard extends StatelessWidget {
  final String? profileimg;

  final String? profilename;

  final double? profilerating;

  final int? profilenumber;

  const Profilecard({
    super.key,
    required this.profileimg,
    required this.profilename,
    required this.profilenumber,
    required this.profilerating,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colorsdata.white.withOpacity(.8),
      borderRadius: BorderRadius.circular(5),
      elevation: 10,
      child: Container(
        height: MyApp.height * .1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colorsdata.white.withOpacity(.8)),
        child: Center(
            child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(profileimg??"assets/contacts.png"),
          ),
          title: TextThemedel(
            text: profilename??"Navien Babu",
            fontWeight: FontWeight.bold,
          ),
          subtitle: TextThemedel(text: "${profilenumber??"98 76 54 32 10"}"),
          trailing: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            height: MyApp.height * .03,
            decoration: BoxDecoration(
                color: Colorsdata.midcolor,
                borderRadius: BorderRadius.circular(5)),
            child: FittedBox(
                child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextThemedel(
                  text: "${profilerating??"4.5"}",
                  color: Colorsdata.white,
                  fontSize: ((MyApp.height * .005) * (MyApp.width * .003)),
                ),
                Icon(
                  Icons.star,
                  color: Colorsdata.white,
                  size: ((MyApp.height * .01) * (MyApp.width * .003)),
                )
              ],
            )),
          ),
        )),
      ),
    );
  }
}
