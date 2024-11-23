import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/constants/colors.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Container(

          height: 40,
          width: 40,
          decoration: BoxDecoration(

            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all( color: AppColors.softBlue.withOpacity(0.5))
          ),

          child: Center(

            child: IconButton(

              hoverColor: AppColors.blushPink,
              onPressed: (){},

              icon: FaIcon(

                FontAwesomeIcons.linkedinIn,
                color: AppColors.softBlue,
                size: 15,
              ),
            ),
          ),
        ),
          const SizedBox(width:10,),
        Container(

          height: 40,
          width: 40,
          decoration: BoxDecoration(

              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all( color: AppColors.softBlue.withOpacity(0.5))
          ),

          child: Center(

            child: IconButton(

              hoverColor: AppColors.blushPink,
              onPressed: (){},

              icon: FaIcon(

                FontAwesomeIcons.github,
                color: AppColors.softBlue,
                size: 15,
              ),
            ),
          ),
        ),
          const SizedBox(width:10,),
        Container(

          height: 40,
          width: 40,
          decoration: BoxDecoration(

              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all( color: AppColors.softBlue.withOpacity(0.5))
          ),

          child: Center(

            child: IconButton(

              hoverColor: AppColors.blushPink,
              onPressed: (){},

              icon: FaIcon(

                FontAwesomeIcons.instagram,
                color: AppColors.softBlue,
                size: 15,
              ),
            ),
          ),
        )

      ],
    );
  }
}
