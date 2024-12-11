import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';
import '../const/images.dart';

class SkillDesktop extends StatelessWidget {
  const SkillDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 450),
            child: Wrap(
              spacing: 5.0,
              runSpacing: 5.0,
              children: [
                for (int i = 0; i < platformItems.length; i++)
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                        color: CustomColor.bgLight2,
                        borderRadius: BorderRadius.circular(5)),
                    child: ListTile(
                      contentPadding:
                      const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      leading: Image.asset(
                        platformItems[i]['img'],
                        width: 26.0,
                      ),
                      title: Text(platformItems[i]['title'],
                          style: GoogleFonts.nunitoSans()),
                    ),
                  )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 50.0,
        ),

        //skills

        //this flexible widget makes a new line according to the screen size
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500.0),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
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
          ),
        ),
      ],
    );
  }
}
