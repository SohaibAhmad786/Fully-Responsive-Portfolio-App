import 'package:flutter/material.dart';
import 'package:portfolio/view/home_section/footer/footer_section.dart';
import 'package:portfolio/view/home_section/header/header_section.dart';
import 'package:portfolio/view/home_section/middle/middle_section.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: const Color(0xff000535),
        child: VStack(
          [
            const HeaderSection(),
            if (context.isMobile) const IntroductionTxt().p16(),
            const MiddleSection(),
            const FooterSection(),
          ],
        ).scrollVertical(),
      ),
    );
  }
}
