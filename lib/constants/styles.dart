import 'package:flutter/cupertino.dart';
import 'package:portfolio_website/constants/colors.dart';

class Styles{

  static const BoxDecoration gradientDecoration=BoxDecoration(
      gradient: LinearGradient(
          colors: [
            AppColors.midnightBlue,
            AppColors. softBlue,
          ]
      )

  );
}