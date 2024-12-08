import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/const/colors.dart';
import 'package:my_portfolio/const/nav_items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.scaffoldBg,
        body: ListView(
          scrollDirection: Axis.vertical,
          //Main
          children: [
            //Main
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.transparent, CustomColor.bgLight1]),
                  borderRadius: BorderRadius.circular(100)),
              child: Row(
                children: [
                  Text(
                    'AHS',
                    style: GoogleFonts.nunitoSans(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.yellowSecondary,
                        decoration: TextDecoration.underline),
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
                                  fontSize: 16,
                                  color: CustomColor.whitePrimary),
                            )))
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
  }
}
