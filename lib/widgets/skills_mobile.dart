import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';
import '../const/images.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < platformItems.length; i++)
          Container(
            margin: const EdgeInsets.only(bottom: 5.0),
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  5.0,
                ),
                color: CustomColor.bgLight2),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                  vertical: 10.0, horizontal: 20.0),
              leading: Image.asset(
                platformItems[i]['img'],
                width: 26.0,
              ),
              title: Text(platformItems[i]['title']),
            ),
          ),
        const SizedBox(
          height: 50,
        ),
        //skills

        Wrap(
          spacing: 10.0,
          runSpacing: 10.0,
          alignment: WrapAlignment.center,
          children: [
            for (int i = 0; i < skillItems.length; i++)
              Chip(
                backgroundColor: CustomColor.bgLight2,
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 16.0),
                label: Text(
                  skillItems[i]['title'],
                  style: GoogleFonts.nunitoSans(),
                ),
                avatar: Image.asset(skillItems[i]['img']),
              )
          ],
        ),
      ],
    );
  }
}
