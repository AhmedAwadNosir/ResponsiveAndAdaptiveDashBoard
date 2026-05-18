import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/features/home/data/models/text_field_section_modal.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                textFieldSectionModal: TextFieldSectionModal(
                  hint: "Type customer name",
                  title: "Customer name",
                  onSubmitted: (value) {},
                  onChanged: (value) {},
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                textFieldSectionModal: TextFieldSectionModal(
                  hint: "Type customer Email",
                  title: "Customer Email",
                  onSubmitted: (value) {},
                  onChanged: (value) {},
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                textFieldSectionModal: TextFieldSectionModal(
                  hint: "Type item name",
                  title: "Customer name",
                  onSubmitted: (value) {},
                  onChanged: (value) {},
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                textFieldSectionModal: TextFieldSectionModal(
                  hint: "Type item mount",
                  title: "USD",
                  onSubmitted: (value) {},
                  onChanged: (value) {},
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
