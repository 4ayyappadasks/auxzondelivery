import 'package:auxzondeliveryapp/common/textfont/textfont.dart';
import 'package:auxzondeliveryapp/main.dart';
import 'package:flutter/material.dart';

class HomescreenWrapper extends StatelessWidget {
  const HomescreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const Homescreen();
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      drawer: Drawer(),
      appBar: AppBar(
        // title:  Text('Delivery Boy App',
        // style: TextThemedel.getFonts(Color(0xFF000000), 25),),
        // centerTitle: true,
        forceMaterialTransparency: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 10,
              child: Container(
                height: MyApp.height*.25,
                width: MyApp.width,
               decoration: BoxDecoration(
                 color: Color(0xFF14358C),
                 borderRadius: BorderRadius.circular(10)
               ),
                child: Row(
                  children: [
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextThemedel(
                          text: '14',
                          color: Color(0xFFFFFFFF),
                          fontSize: 64,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.bold,
                        ),
                        TextThemedel(
                          text:  'TUESDAY',
                          color: Color(0xFFFFFFFF),
                          fontSize: 24,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    TextThemedel(
                      text:'FEB 2023',
                      color: Color(0xFFA9A9A9),
                      fontSize: 16,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.bold,
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextThemedel(
                  text:"Recent Orders",
                  color: Color(0xFF14358C),
                  fontSize: 15,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                ),
                TextButton(onPressed: () {

                }, child: TextThemedel(
                  text:"See All",
                  color: Color(0xFF14358C),
                  fontSize: 15,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                )),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: 8,
              itemBuilder: (context, index) => Card(
                color: Color(0xFFFFFFFF),
                elevation: 10,
                child: ListTile(
                  title: TextThemedel(
                    text:"Order no : #123456$index",
                    color: const Color(0xFF14358C),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: TextThemedel(
                    text:"Location details",
                    color: Color(0xFF284EAF),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                  trailing: TextThemedel(
                    text:"${index+2} itmes",
                    color: Color(0xFF14358C),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),),
          ),
        ],
      ),
    );
  }
}