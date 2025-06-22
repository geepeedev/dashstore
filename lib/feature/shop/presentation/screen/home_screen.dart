import 'package:dashstore/common/widget/appbar/dash_appbar_widget.dart';
import 'package:dashstore/common/widget/headers/section_header.dart';
import 'package:dashstore/feature/shop/presentation/widget/home/cart_badge.dart';
import 'package:dashstore/feature/shop/presentation/widget/home/category.dart';
import 'package:dashstore/feature/shop/presentation/widget/home/home_header.dart';
import 'package:dashstore/feature/shop/presentation/widget/home/promo_slider.dart';
import 'package:dashstore/feature/shop/presentation/widget/home/searchbar.dart';
import 'package:dashstore/feature/shop/presentation/widget/home/vertical_product_card.dart';
import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:dashstore/utilities/helper/dash_helper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor:
          DashHelper.isDarkMode(context)
              ? DashColors.neutralDark
              : DashColors.surface,

      body: SingleChildScrollView(
        child: Column(
          children: [
            DashHomeHeaderWidget(
              child: Column(
                children: [
                  // appbar of the home screen
                  DashAppbarWidget(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good day",
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        Text(
                          "Godwin Gold",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                    actions: [CartBadgeWidget()],
                  ),
                  SizedBox(height: DashSizes.defaultSpaceSection),
                  // search bar of the home screen
                  SearchbarWidget(),
                  SizedBox(height: DashSizes.defaultSpaceSection),
                  // categories section header
                  DashSectionHeaderWidget(text: 'Popular Categories'),
                  SizedBox(height: DashSizes.defaultSpaceItem),
                  // categories list
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CategoryWidget(imageUrl: '', title: 'shoe RACK');
                      },
                    ),
                  ),
                ],
              ),
            ),
            // home screen caruosel slider
            PromoSliderWidget(),
            SizedBox(height: DashSizes.defaultSpaceSection),
            // products grid section
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 288,
                mainAxisSpacing: DashSizes.gridViewSpacing,
                crossAxisSpacing: DashSizes.gridViewSpacing,
              ),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return ProductCardVerticalWidget();
              },
            ),
          ],
        ),
      ),
    );
  }
}
