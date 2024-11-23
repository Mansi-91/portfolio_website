import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/largescreen/desktop_layout_page.dart';
import 'package:portfolio_website/screens/mobile/mobile_layout_page.dart';
import 'package:portfolio_website/screens/tablet/table_layout_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(


        builder:(context,constraints){

          if(constraints.maxWidth>950){
            return DesktopLayout();
          }
          else if(constraints.maxWidth>600){
            return TabletLayout();
          }
          else{
            return MobileLayout();
          }
        }

    );
  }
}
