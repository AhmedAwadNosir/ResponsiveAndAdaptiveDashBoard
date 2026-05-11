import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/core/utils/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DesctopLayout extends StatelessWidget {
  const DesctopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Color(0xFFFFFFFF),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 28,
                right: 20,
                top: 50,
                bottom: 48,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 27),
                    child: Container(
                      height: 53,
                      color: Color(0xffc4c4c4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [SvgPicture.asset(AppImages.imagesGallery)],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 40,
              left: 32,
              bottom: 32,
              right: 24,
            ),
            child: Column(
              children: [
                Expanded(flex: 1, child: Container(color: Color(0xFFFFFFFF))),
                SizedBox(height: 24),
                Expanded(flex: 2, child: Container(color: Color(0xFFFFFFFF))),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Expanded(flex: 3, child: Container(color: Color(0xFFFFFFFF))),
              SizedBox(height: 24),
              Expanded(flex: 1, child: Container(color: Color(0xFFFFFFFF))),
            ],
          ),
        ),
      ],
    );
  }
}
