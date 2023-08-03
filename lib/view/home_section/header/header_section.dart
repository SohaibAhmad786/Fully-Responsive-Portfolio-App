import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: VxBox(
      child: VStack(
        [
          ZStack(
            alignment:
                context.isMobile ? Alignment.centerRight : Alignment.center,
            [
              const PictureContainer(),
              Row(
                children: [
                  VStack(
                    [
                      20.heightBox,
                      const CustomIconBox(),
                      30.heightBox,
                      const NameTxt(),
                      20.heightBox,
                      VxBox()
                          .color(Vx.emerald300)
                          .size(60, 10)
                          .make()
                          .shimmer(primaryColor: Vx.emerald500),
                      30.heightBox,
                      const SocialAccounts(),
                    ],
                  ).pSymmetric(h: context.percentWidth * 10, v: 32),
                  Expanded(
                    child: VxResponsive(
                      fallback: const Offstage(),
                      medium: const IntroductionTxt()
                          .pOnly(left: 120, right: 35,top: 100)
                          .h(context.percentHeight * 60),
                      large: const IntroductionTxt()
                          .pOnly(left: 120, right: 35,top: 100)
                          .h(context.percentHeight * 60),
                    ),
                  ),
                ],
              ).w(context.screenWidth),
            ],
          ),
        ],
      ),
    )
            .color(context.isMobile
                ? const Color(0xff708090)
                : const Color(0xff000535))
            .make());
  }
}

class PictureContainer extends StatelessWidget {
  const PictureContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.network(
        "https://github.com/SohaibAhmad786/BMI-Calculator/blob/master/assets/removebg.png?raw=true",
        fit: BoxFit.contain,
      ),
    );
  }
}

class CustomIconBox extends StatelessWidget {
  const CustomIconBox({super.key});

  @override
  Widget build(BuildContext context) {
    return VxBox(
            child: const Icon(
      Icons.terminal,
      color: Colors.white,
      size: 80,
    ))
        .size(90, 80)
        .color(Vx.emerald700)
        .border(
          color: const Color(0xffC89E62),
          // width: 2,
        )
        .roundedSM
        .make();
  }
}

class NameTxt extends StatelessWidget {
  const NameTxt({super.key});

  @override
  Widget build(BuildContext context) {
    return "Muhammad\nSohaib"
        .text
        .emerald300
        .bold
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 12 : 20)
        .make()
        .shimmer(primaryColor: Vx.emerald500);
  }
}

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return HStack(
      [
        const Icon(
          FontAwesomeIcons.linkedin,
          color: Vx.emerald500,
          size: 40,
        ).mdClick(() async {
          await launchUrl(
            Uri.parse(
                "https://www.linkedin.com/in/muhammadsohaib-flutter9799b1242/"),
            mode: LaunchMode.externalNonBrowserApplication,
          ).onError((error, stackTrace) {
            print("Error Occured");
            return true;
          });
        }).make(),
        20.widthBox,
        const Icon(
          FontAwesomeIcons.squareGithub,
          color: Vx.emerald500,
          size: 40,
        ).mdClick(() async {
          await launchUrl(
            Uri.parse("https://github.com/SohaibAhmad786"),
            mode: LaunchMode.externalNonBrowserApplication,
          ).onError((error, stackTrace) {
            print("Error Occured");
            return true;
          });
        }).make(),
      ],
    );
  }
}

class IntroductionTxt extends StatelessWidget {
  const IntroductionTxt({super.key});

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        "- Introduction".text.emerald300.bold.widest.lg.make(),
        "○  1 year experience in Mobile App Development.\n○  Especiality in Flutter, Dart, Firebase, Getx, Provider...etc."
            .text
            .white
            .xl3
            .maxLines(7)
            .make()
            .w(context.isMobile
                ? context.screenWidth
                : context.percentWidth * 40),
        20.heightBox,
      ],
      crossAlignment: CrossAxisAlignment.center,
    );
  }
}
