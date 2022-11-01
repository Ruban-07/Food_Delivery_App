import 'package:flutter/material.dart';
import 'package:foodie/utils/colors.dart';
import 'package:foodie/utils/dimensions.dart';
import 'package:foodie/widgets/app_icon.dart';
import 'package:foodie/widgets/big_text.dart';
import 'package:foodie/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.clear,
                  backgroundColor: Colors.black,
                  iconColor: Colors.white,
                ),
                AppIcon(
                  icon: Icons.shopping_cart,
                  backgroundColor: Colors.black,
                  iconColor: Colors.white,
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(
                  size: Dimensions.font26,
                  text: "Browney Cake",
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  top: 5,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    )),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.brown,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/food6.webp',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                  ),
                  child: ExpandableTextWidget(
                      text:
                          "Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China. Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China. Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China. Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China. Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China. Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China. Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China. Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China. Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China. Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China.Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China.Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China.Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China.Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China.Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China.Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China.Lanzhou Hand Pull Noodles is definitely the most popular noodles in China, as Lanzhou Hand Pull Noodles can be found almost every city of China."),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  icon: Icons.remove,
                ),
                BigText(
                  text: '\$12.88 ' + ' X ' + ' 0 ',
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  icon: Icons.add,
                ),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
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
        ],
      ),
    );
  }
}
