import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/screens/widgets/social_section.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HeaderTextWidget extends StatelessWidget {
  final Size size;
  const HeaderTextWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:size.width*0.07, vertical: size.width*0.12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Text("I'm Mansi Kapse",style:TextStyle(fontSize: 26, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),)
          ,GradientText("Aspiring Developer +\nTech Enthusiast", colors: [
            AppColors.deepViolet,
            AppColors.blushPink,

          ],
            style: TextStyle(

              fontSize: size.width*0.040,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),

          ),

          SizedBox(
            width: size.width*0.5,
            child: Text("I'm a passionate second-year Computer Science student with a love for coding, problem-solving, and innovation. I enjoy exploring Flutter, DSA, and blockchain to build impactful projects. With a strong curiosity for emerging technologies, I aim to create solutions that blend creativity with functionality, making a meaningful difference. I'm driven by the excitement of continuous learning and turning ideas into reality",style:TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'Poppins'),) ,

          ),
Container(
  width: size.width*0.5,
  child: SocialSection(),
)
        ],
      ),
    );
  }
}


