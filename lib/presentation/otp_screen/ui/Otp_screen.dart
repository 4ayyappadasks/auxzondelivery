import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import '../../../common/bottomsheet/ui/bottomsheet.dart';
import '../../../common/textfont/textfont.dart';
import '../../../main.dart';
import '../../login_page/ui/login_screen.dart';
import '../bloc/otpscreen_bloc.dart';

class OtpScreenWrapper extends StatelessWidget {
  const OtpScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpscreenBloc(),
      child: const OtpScreen(),
    );
  }
}

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const LoginScreenWrapper(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: BlocBuilder<OtpscreenBloc, OtpscreenState>(
        builder: (context, state) {
          final bloc = BlocProvider.of<OtpscreenBloc>(context);
          bool isContinueButtonVisible = state is Otpscreenenterd ||
              state is Otpcountdownstared;
          bool isResendButtonVisible = state is Otpcountdowncompleted || state is Otpscreenenterd;
          String? otp;
          String countdownText = '';
          if (state is Otpcountdownstared) {
            countdownText = 'Resend code in ${state.seconds} sec';
          }

          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const TextThemedel(
                  text: "Enter OTP",
                  color: Color(0xFF000000),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                const TextThemedel(
                  text: "OTP has been sent to XX-XX-XX-XX-XX",
                  color: Color(0xFFADADAD),
                  fontSize: 10,
                ),
                const SizedBox(height: 10),
                OtpTextField(
                  clearText: isResendButtonVisible,
                  keyboardType: TextInputType.number,
                  numberOfFields: 5,
                  borderColor: Color(0xFF512DA8),
                  showFieldAsBox: true,
                  onCodeChanged: (String code) {},
                  onSubmit: (String verificationCode) {
                    otp = verificationCode;
                    bloc.add(OtpEnterd(otp: verificationCode));
                  },
                ),
                const SizedBox(height: 10),
                if (countdownText.isNotEmpty)
                  TextThemedel(
                    text: countdownText,
                    color: const Color(0xFFADADAD),
                    fontSize: 10,
                  ),
                const SizedBox(height: 10),
                if (isContinueButtonVisible)
                MaterialButton(
                  elevation: 5,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => BottomsheetWrapper(),));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: const Color(0xff2fa134),
                  minWidth: MyApp.width * .6,
                  height: MyApp.height * .06,
                  child: const TextThemedel(
                    text: "continue",
                    color: Color(0xFFFFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (isResendButtonVisible)
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {
                      bloc.add(OtpEnterd(otp: "$otp"));
                    },
                    color: const Color(0xff2fa134),
                    child: const TextThemedel(
                      text: "Resend OTP",
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}

