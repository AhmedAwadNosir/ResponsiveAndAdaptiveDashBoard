import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myresponsive_dashboard/core/utils/app_images.dart';
import 'package:myresponsive_dashboard/core/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(AppImages.imagesCardBackground),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 31, right: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name card",
                        style: AppStyles.styleRegular16(
                          context,
                        ).copyWith(color: Colors.white),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Syah Bandi",
                        style: AppStyles.styleMedium20(context),
                      ),
                    ],
                  ),
                  SvgPicture.asset(AppImages.imagesGallery),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24, bottom: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.styleSemiBold24(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                  Text(
                    "12/20-124",
                    style: AppStyles.styleRegular16(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
