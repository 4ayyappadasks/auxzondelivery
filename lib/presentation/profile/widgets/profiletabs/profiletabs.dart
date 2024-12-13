import 'package:flutter/material.dart';
import '../../../../common/color/color.dart';
import '../../../../common/textfont/textfont.dart';

class Profiletabs extends StatelessWidget {
  final VoidCallback editfuncction;
  final VoidCallback privacyfuncction;
  final VoidCallback historyfuncction;
  final VoidCallback faqfuncction;
  final VoidCallback logoutfuncction;
  ///
  final IconData? faqicon;
  final IconData? historyicon;
  final IconData? privacyicon;
  final IconData? editprofileicon;
  final IconData? logouticon;
  ///
  final String? editprofiletext;
  final String? historytext;
  final String? privacytext;
  final String? faqtext;
  final String? logouttext;
  ///
  const Profiletabs({
    super.key,
    required this.editfuncction,
    required this.privacyfuncction,
    required this.historyfuncction,
    required this.faqfuncction,
    required this.logoutfuncction,
    ///
    required this.faqicon,
    required this.historyicon,
    required this.privacyicon,
    required this.editprofileicon,
    required this.logouticon,
    ///
    required this.editprofiletext,
    required this.privacytext,
    required this.historytext,
    required this.faqtext,
    required this.logouttext,
    ///
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(15),
      elevation: 5,
      child: Column(
        children: [
          _buildProfileTab(
            icon: editprofileicon ?? Icons.account_circle_outlined,
            text: editprofiletext ?? "Edit Profile",
            onPressed: editfuncction,
            topRounded: true,
          ),
          _buildProfileTab(
            icon: privacyicon ?? Icons.privacy_tip,
            text: privacytext ?? "Privacy Policies",
            onPressed: privacyfuncction,
          ),
          _buildProfileTab(
            icon: historyicon ?? Icons.history_outlined,
            text: historytext ?? "History",
            onPressed: historyfuncction,
          ),
          _buildProfileTab(
            icon: faqicon ?? Icons.question_mark_rounded,
            text: faqtext ?? "F.A.Q",
            onPressed: faqfuncction,
          ),
          _buildProfileTab(
            icon: logouticon ?? Icons.question_mark_rounded,
            text: logouttext ?? "F.A.Q",
            onPressed: logoutfuncction,
            bottomRounded: true,
          ),
        ],
      ),
    );
  }

  Widget _buildProfileTab({
    required IconData icon,
    required String text,
    required VoidCallback onPressed,
    bool topRounded = false,
    bool bottomRounded = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colorsdata.white.withOpacity(.9),
        borderRadius: BorderRadius.only(
          topLeft: topRounded ? const Radius.circular(15) : Radius.zero,
          topRight: topRounded ? const Radius.circular(15) : Radius.zero,
          bottomLeft: bottomRounded ? const Radius.circular(15) : Radius.zero,
          bottomRight: bottomRounded ? const Radius.circular(15) : Radius.zero,
        ),
        border: bottomRounded
            ? null
            : Border(
          bottom: BorderSide(color: Colorsdata.unfocus, width: 1),
        ),
      ),
      child: ListTile(
        leading: Icon(icon),
        title: TextThemedel(text: text),
        trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.arrow_forward_ios_sharp),
        ),
      ),
    );
  }
}
