import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/const/images.dart';

import '../const/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withOpacity(0.6),
                CustomColor.scaffoldBg.withOpacity(0.7)
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              homeLogo,
              width: screenWidth,
              height: screenHeight / 2,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Hi, \nI'm Abir Hasan\nFlutter developer",
            style: GoogleFonts.nunitoSans(
                fontSize: 24.0, fontWeight: FontWeight.bold, height: 1.5
                //this height is special, cause it makes some space in the line vertically
                ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 190,
            child: ElevatedButton(
                onPressed: () {}, child: const Text('Get in touch')),
          )
        ],
      ),
    );
  }
}
