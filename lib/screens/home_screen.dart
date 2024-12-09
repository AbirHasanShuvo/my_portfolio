import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/const/colors.dart';
import 'package:my_portfolio/const/nav_items.dart';
import 'package:my_portfolio/const/size.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header_Mobile.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          endDrawer: constraints.maxWidth < kMinDesktopWidth
              ? const DrawerMobile()
              : null,
          backgroundColor: CustomColor.scaffoldBg,
          body: ListView(
            scrollDirection: Axis.vertical,
            //Main
            children: [
              //Main
              // HeaderDesktop(),
              if (constraints.maxWidth < kMinDesktopWidth)
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                )
              else
                HeaderDesktop(),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: screenSize.height / 1.2,
                constraints: const BoxConstraints(minHeight: 350.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Hello World'),
                        Text(
                          "Hi, \nI'm Abir Hasan\nFlutter developer",
                          style: GoogleFonts.nunitoSans(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              height: 1.5
                              //this height is special, cause it makes some space in the line vertically
                              ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Get in touch'))
                      ],
                    ),
                    Image.asset(
                      'assets/images/bird.png',
                      width: screenWidth / 2,
                    )
                  ],
                ),
              ),
              //SKILLS
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              //PROJECTS
              Container(
                height: 500,
                width: double.maxFinite,
              ),
              //CONTACT
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              //FOOTER
              Container(
                height: 500,
                width: double.maxFinite,
              ),
            ],
          ));
    });
  }
}
