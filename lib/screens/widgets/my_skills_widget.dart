

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/screens/widgets/text_widget.dart';

class MySkillsWidget extends StatefulWidget {
  final Size size;
  final List<String> skills;

  const MySkillsWidget({
    super.key,
    required this.size,
    required this.skills,
  });

  @override
  State<MySkillsWidget> createState() => _MySkillsWidgetState();
}

class _MySkillsWidgetState extends State<MySkillsWidget> {
  late List<bool> _isHovered;

  @override
  void initState() {
    super.initState();
    _isHovered = List<bool>.filled(widget.skills.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.skills.length,
      itemBuilder: (context, index) {
        return MouseRegion(
          onEnter: (_) => setState(() => _isHovered[index] = true),
          onExit: (_) => setState(() => _isHovered[index] = false),
          child: AnimatedContainer(
            padding: const EdgeInsets.all(20),
            duration: const Duration(microseconds: 300),
            curve: Curves.easeInOut,
            margin: EdgeInsets.symmetric(horizontal: widget.size.width * 0.015),
            height: widget.size.height * 0.15,
            width: widget.size.width,
            decoration: BoxDecoration(
              color: _isHovered[index] ? null : Colors.transparent,
              border: Border.all(
                color: _isHovered[index]
                    ? AppColors.softBlue.withOpacity(0.5)
                    : Colors.transparent,
              ),
              gradient: _isHovered[index]
                  ? LinearGradient(
                colors: [
                  AppColors.pastelPurple,
                  AppColors.midnightBlue,
                ],
              )
                  : null,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextWidget(
                  sSize: widget.size,
                  text: "${index + 1}",
                  size: 28,
                  color: Colors.white,
                ),
                SizedBox(width: widget.size.height * 0.04),
                TextWidget(
                  sSize: widget.size,
                  text: widget.skills[index],
                  size: 22,
                  color: Colors.white,
                ),
                SizedBox(width: widget.size.height * 0.04),
                TextWidget(
                  sSize: widget.size,
                  text: "Intermediate level",
                  size: 22,
                  color: Colors.white,
                ),
                FaIcon(
                  _isHovered[index]
                      ? FontAwesomeIcons.arrowTrendUp
                      : FontAwesomeIcons.arrowTrendDown,
                  color: _isHovered[index] ? Colors.white : AppColors.softBlue,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
