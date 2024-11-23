import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/constants/styles.dart';
import 'package:portfolio_website/screens/widgets/contact_me.dart';
import 'package:portfolio_website/screens/widgets/header_text_widget.dart';
import 'package:portfolio_website/screens/widgets/my_skills_widget.dart';
import 'package:portfolio_website/screens/widgets/rotating_image_widget.dart';
import 'package:portfolio_website/screens/widgets/text_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Navigation Bar
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                  vertical: size.height * 0.02,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Logo and Email
                    Row(
                      children: [
                        // Logo (Placeholder)
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: size.width * 0.015,
                          child: Text(
                            'G',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.vibrantPurple,
                              fontSize: size.width * 0.015,
                            ),
                          ),
                        ),
                        SizedBox(width: size.width * 0.01),
                        Text(
                          'kapsemansi@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.012,
                          ),
                        ),
                      ],
                    ),

                    // Navigation Links and Button
                    Row(
                      children: [


                        TextButton(
                          onPressed: () {
                            // Navigate to Resume
                          },
                          child: Text(
                            'Resume',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.012,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to Skills
                          },
                          child: Text(
                            'Skills',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.012,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to Achievements
                          },
                          child: Text(
                            'Achievements',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.012,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to Contact
                          },
                          child: Text(
                            'Contact',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.012,
                            ),
                          ),
                        ),
                        SizedBox(width: size.width * 0.02),

                        // "Hire Me" Button
                        ElevatedButton(
                          onPressed: () {
                            // Add Hire Me functionality
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.02,
                              vertical: size.height * 0.015,
                            ),
                            backgroundColor: AppColors.orchidPurple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            'Hire Me!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.012,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          HeaderTextWidget(
                            size: size,
                          )
                        ],
                      )
                    ],
                  ),

                  Expanded(child: Container(

                    height: size.height*0.75,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        RotatingImageContainer()
                      ],
                    ),
                  ))
                ],
              ),


             SizedBox(height: size.height*0.12,),
              Container(

                color: AppColors.midnightBlue,
                padding: EdgeInsets.symmetric(vertical: size.width*0.05),
                child: Column(
                  children: [


                    GradientText( "My Skills", colors: [

                      AppColors.deepViolet,
                      AppColors.blushPink,
                    ],

                      style: TextStyle(
                          fontSize: size.width * 0.030,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),

                    ),
                    SizedBox(height: size.height*0.02,),
                    Text('We put your ideas and thus your wishes in the form of a unique web project that inspires you and you customers.', style: TextStyle(
                        fontSize:size.width*0.012,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                    ),),


                    SizedBox(height: size.height*0.06,),

                MySkillsWidget(
                  size: Size(400, 800), // Example size
                  skills: ["Flutter", "HTML and CSS", "Python"], // List of skills
                ),
                    const SizedBox(height: 20), // Add spacing if needed
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ContactPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.orchidPurple,
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      ),
                      child: const Text(
                        "Go to Contact Page",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),





                  ],

                ),


              ),





            ],
          ),
        ),
      ),
    );
  }
}
