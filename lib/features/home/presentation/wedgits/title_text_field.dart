import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/core/utils/app_styles.dart';
import 'package:myresponsive_dashboard/features/home/data/models/text_field_section_modal.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.textFieldSectionModal});
  final TextFieldSectionModal textFieldSectionModal;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          textFieldSectionModal.title,
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 12),
        TextField(
          onSubmitted: textFieldSectionModal.onSubmitted,
          onChanged: textFieldSectionModal.onChanged,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20),
            fillColor: Color(0xffFAFAFA),
            filled: true,
            border: buildOutlinedInputBorder(color: Color(0xffFAFAFA)),
            enabledBorder: buildOutlinedInputBorder(color: Color(0xffFAFAFA)),
            focusedBorder: buildOutlinedInputBorder(color: Color(0xff4EB7F2)),
            hint: Text(
              textFieldSectionModal.hint,
              style: AppStyles.styleRegular16grey(
                context,
              ).copyWith(fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}

OutlineInputBorder buildOutlinedInputBorder({required Color color}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: color),
  );
}
