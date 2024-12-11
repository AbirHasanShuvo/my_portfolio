import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(minHeight: 350.0),
      //this constraints means the minimum height of the browser
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi, \nI'm Abir Hasan\nFlutter developer",
                style: GoogleFonts.nunitoSans(
                    fontSize: 30.0, fontWeight: FontWeight.bold, height: 1.5
                    //this height is special, cause it makes some space in the line vertically
                    ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                    onPressed: () {}, child:  Text('Get in touch', style: GoogleFonts.nunitoSans())),
              )
            ],
          ),
          Image.asset(
            'assets/images/bird.png',
            width: screenWidth / 2,
          )
        ],
      ),
    );
  }
}
