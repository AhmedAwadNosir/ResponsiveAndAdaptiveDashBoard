import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/core/utils/app_images.dart';
import 'package:myresponsive_dashboard/features/home/data/models/all_expansess_item_modal.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/all_expansess_header.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_bacground_container.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/inactive_active_expensess_item.dart';

class AllExpancess extends StatefulWidget {
  const AllExpancess({super.key});

  @override
  State<AllExpancess> createState() => _AllExpancessState();
}

class _AllExpancessState extends State<AllExpancess> {
  int selectedCard = 1;
  List<AllExpansessItemModal> items = [
    AllExpansessItemModal(
      icon: AppImages.imagesMoneys,
      title: "Balance",
      rangeTime: "April 2022",
      welth: "\$20,129",
    ),

    AllExpansessItemModal(
      icon: AppImages.imagesIncome,
      title: "Income",
      rangeTime: "April 2022",
      welth: "\$20,129",
    ),
    AllExpansessItemModal(
      icon: AppImages.imagesExpenses,
      title: "Expenses",
      rangeTime: "April 2022",
      welth: "\$20,129",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomBacgroundContainer(
      child: Column(
        children: [
          AllExpansessHeader(),
          SizedBox(height: 8),
          Row(
            children: items.asMap().entries.map((e) {
              int index = e.key;
              var item = e.value;
              return Expanded(
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: index == 1 ? 12 : 0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      if (selectedCard != index) {
                        setState(() {
                          selectedCard = index;
                        });
                      }
                    },
                    child: selectedCard == index
                        ? ActiveExpensessItem(allExpansessItemModal: item)
                        : InactiveExpensessItem(allExpansessItemModal: item),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
