import 'package:flutter/material.dart';
import 'package:portfolio/view/home_section/header/header_section.dart';

import 'package:velocity_x/velocity_x.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              20.heightBox,
              "Got a Projects?\nLet's talk.".text.center.white.xl3.make(),
              20.heightBox,
              "muhammadsohaib030@gmail.com"
                  .text
                  .wider
                  .emerald300
                  .semiBold
                  .make()
                  .box
                  .border(
                    color: const Color(0xffC89E62),
                    width: 2,
                  )
                  .p16
                  .rounded
                  .make(),
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Got a Projects?\nLet's talk.".text.center.white.xl2.make(),
              20.widthBox,
              "muhammadsohaib030@gmail.com"
                  .text
                  .wider
                  .emerald300
                  .semiBold
                  .make()
                  .box
                  .border(
                    color: const Color(0xffC89E62),
                    width: 2,
                  )
                  .p16
                  .rounded
                  .make(),
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).p16().scale150(),
        ),
        50.heightBox,
        const CustomIconBox(),
        15.heightBox,
        "Thanks for Scrolling.   "
            .richText
            .wider
            .semiBold
            .white
            .withTextSpanChildren(
          [
            "that's all folks".textSpan.wider.emerald300.make(),
          ],
        ).make(),
        10.heightBox
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
