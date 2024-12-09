import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/const/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        'AH',
        style: GoogleFonts.nunitoSans(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: CustomColor.yellowSecondary,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
