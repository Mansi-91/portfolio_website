import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:portfolio_website/constants/colors.dart';

class DownloadResumeButton extends StatelessWidget {
  const DownloadResumeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 50,
      width: 250,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.blushPink)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("Download Resume",style: TextStyle(color: AppColors.blushPink),),

          const SizedBox.square(dimension: 12,),
          FaIcon(FontAwesomeIcons.download,color: AppColors.blushPink,size: 18,)
        ],
      ),
    );
  }
}