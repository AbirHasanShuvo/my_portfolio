import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/const/colors.dart';
import 'package:my_portfolio/const/images.dart';
import 'package:my_portfolio/const/nav_items.dart';
import 'package:my_portfolio/const/size.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header_Mobile.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/main_Desktop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import 'package:my_portfolio/widgets/site_logo.dart';
import 'package:my_portfolio/widgets/skill_desktop.dart';
import 'package:my_portfolio/widgets/skills_mobile.dart';

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
    final screenHeight = screenSize.height;
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
              // MainDesktop(),

              if (constraints.maxWidth < kMinDesktopWidth)
                MainMobile()
              else
                MainDesktop(),

              //SKILLS
              Container(
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'What can I do',
                      style: GoogleFonts.nunitoSans(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary),
                    ),

                    const SizedBox(
                      height: 50.0,
                    ),
                    //platform and skills

                    // SkillDesktop()

                    if (constraints.maxWidth < kMinDesktopWidth)
                      const SkillsMobile()
                    else
                      const SkillDesktop()
                  ],
                ),
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
