import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myresponsive_dashboard/core/utils/app_images.dart';
import 'package:myresponsive_dashboard/features/home/data/models/user_model.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_user_details_container.dart';

class LastTransactionItemsBuilder extends StatelessWidget {
  const LastTransactionItemsBuilder({super.key});
  static List<UserModel> transactions = [
    UserModel(
      avatar: AppImages.imagesAvatar1,
      name: "Madrani Andi",
      email: "Madraniadi20@gmail",
    ),
    UserModel(
      avatar: AppImages.imagesAvatar2,
      name: "Josua Nunito",
      email: "Josh Nunito@gmail.com",
    ),
    UserModel(
      avatar: AppImages.imagesAvatar1,
      name: "Madrani Andi",
      email: "Madraniadi20@gmail",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // solution 1 if you have many items  you must use listviwe
    // but you have to define hight of list view manualy
    // this done by look to item and know if the difne hight give it to list view
    // or use gues work to give it hiegt buy go inside items and try to define hight
    // but now we have problem with liststie the want to define width but we want to take childere size
    // so we use intrinsic width wrab item to make list stile define width acordint to begist child
    // return SizedBox(
    //   height: 75,
    //   child: ListView.builder(
    //     itemCount: transactions.length,
    //     scrollDirection: Axis.horizontal,
    //     shrinkWrap: true,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: Padding(
    //           padding: const EdgeInsets.only(right: 12),
    //           child: CustomUserDetailsContainer(userModel: transactions[index]),
    //         ),
    //       );
    //     },
    //   ),
    // );

    // solution 2 is the best of our case because we have few items
    // so we use row dont need hight and use .map.tolist to build items
    // and use single shild scrool view to make it scroll
    // and for list tile width you can wrap it with expande or intrinsic width
    // but here must use intrinsic width beacuse expaned give me error after that

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: transactions
            .map(
              (e) => IntrinsicWidth(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: CustomUserDetailsContainer(userModel: e),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
