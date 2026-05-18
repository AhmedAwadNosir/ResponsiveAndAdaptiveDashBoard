import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myresponsive_dashboard/core/utils/app_styles.dart';
import 'package:myresponsive_dashboard/features/home/data/models/user_model.dart';

class CustomUserDetailsContainer extends StatelessWidget {
  const CustomUserDetailsContainer({super.key, required this.userModel});
  final UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userModel.avatar),
          title: Text(
            userModel.name,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            userModel.email,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
