import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/const/colors.dart';
import 'package:my_portfolio/const/nav_items.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 60,
      width: double.maxFinite,
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
                padding: const EdgeInsets.only(right: 20),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      navTitles[i],
                      style: GoogleFonts.nunitoSans(
                          fontSize: 16, color: CustomColor.whitePrimary),
                    )))
        ],
      ),
    );
  }
}
