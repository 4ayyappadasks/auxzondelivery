import 'package:auxzondeliveryapp/common/color/color.dart';
import 'package:flutter/material.dart';

class Errorwidgetbloc extends StatelessWidget {
  Errorwidgetbloc({super.key, this.img});
  final String? img;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colorsdata.white,
          image: DecorationImage(image: AssetImage(img??"assets/404 Error.png"),
          fit: BoxFit.contain)
        ),
      ),
    );
  }
}
