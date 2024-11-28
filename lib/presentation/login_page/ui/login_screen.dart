import 'package:auxzondeliveryapp/common/textfont/textfont.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../otp_screen/ui/Otp_screen.dart';

class LoginScreenWrapper extends StatelessWidget {
  const LoginScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginScreen();
  }
}

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  var phonenumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/signupimage.png"),
                        fit: BoxFit.cover)),
              ),
            ),
            const ListTile(
              title: TextThemedel(
                text: 'Sign in to your account',
                color: Color(0xFF000000),
                fontSize: 24,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
              ),
              subtitle: TextThemedel(
                text: 'Login or create an account',
                color: Color(0xFFBABBBA),
                fontSize: 10,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: phonenumber,
                decoration: InputDecoration(
                  prefixIcon: const CountryCodePicker(
                    onChanged: print,
                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    initialSelection: 'IN',
                    favorite: ['+91','IN'],
                    // optional. Shows only country name and flag
                    showCountryOnly: false,
                    // optional. Shows only country name and flag when popup is closed.
                    showOnlyCountryWhenClosed: true,
                    // optional. aligns the flag and the Text left
                    alignLeft: false,
                  ),
                  hintText: 'XX-XX-XX-XX-XX',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(height: 20),
            const TextThemedel(
              text: 'Enter a valid 10 digit number you will receive an SMS verification code.',
              color: Color(0xFFBABBBA),
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 20),
            MaterialButton(
              elevation: 5,
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const OtpScreenWrapper(),
                ));
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: const Color(0xff2fa134),
              minWidth: MyApp.width * .6,
              height: MyApp.height * .06,
              child: const TextThemedel(
                text: "Continue",
                color: Color(0xFFFFFFFF),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const TextThemedel(
              text: 'By continuing , you aggree to our Terms & Conditions.',
              color: Color(0xFFBABBBA),
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
