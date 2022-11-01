import 'package:flutter/material.dart';
import 'package:foodie/utils/dimensions.dart';
import 'package:foodie/widgets/app_column.dart';
import 'package:foodie/widgets/app_icon.dart';
import 'package:foodie/widgets/expandable_text_widget.dart';
import 'package:foodie/widgets/icon_and_text_widget.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food7.webp'),
                ),
              ),
            ),
          ),
          //icon
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios_new),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
          ),
          //intro food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    text: "Chinese Side",
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: "Introduce"),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              "Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China. Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China. Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China. Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China. Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China. Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China. Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China. Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China. Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China."),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height30,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 5,
                  ),
                  BigText(text: '0'),
                  SizedBox(
                    width: Dimensions.width10 / 5,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
