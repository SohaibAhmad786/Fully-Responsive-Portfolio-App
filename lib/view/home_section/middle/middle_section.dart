import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.emerald700,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          const AllCreativeTxt(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              items: const [
                ProjectsListView(projectTitle: "Pulse Realty"),
                ProjectsListView(projectTitle: "Taqat"),
                ProjectsListView(projectTitle: "Otter Kiosk"),
                ProjectsListView(projectTitle: "House of Tutors"),
              ],
              height: 170,
              enlargeCenterPage: true,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
            ),
          ),
        ],
      ).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class AllCreativeTxt extends StatelessWidget {
  const AllCreativeTxt({super.key});

  @override
  Widget build(BuildContext context) {
    return "All Creative Projects that\n"
              .richText
              .white
              .widest
              .textStyle(const TextStyle(fontWeight: FontWeight.w500))
              .withTextSpanChildren(
                [
                  "I have done till\nNow".textSpan.yellow400.make(),
                ],
              )
              .xl4
              .make();
  }
}

class ProjectsListView extends StatelessWidget {
  const ProjectsListView({super.key, required this.projectTitle});
  final String projectTitle;
  @override
  Widget build(BuildContext context) {
    return projectTitle.text.wide.white.xl.bold.center
        .make()
        .box
        .p8
        .roundedLg
        .alignCenter
        .square(200)
        .neumorphic(
          color: Vx.emerald700,
          elevation: 8.0,
          curve: VxCurve.flat,
        ).border(
          color: const Color(0xffC89E62),
          width: 2,
        )
        .make()
        .p8();
  }
}
