import 'package:dashstore/common/widget/appbar/dash_appbar_widget.dart';
import 'package:dashstore/common/widget/appbar/dash_tabbar_widget.dart';
import 'package:dashstore/common/widget/headers/section_header.dart';
import 'package:dashstore/feature/shop/presentation/widget/home/cart_badge.dart';
import 'package:dashstore/feature/shop/presentation/widget/home/searchbar.dart';
import 'package:dashstore/feature/shop/presentation/widget/home/vertical_product_card.dart';
import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/constants/enums.dart';
import 'package:dashstore/utilities/constants/rive_string.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: DashAppbarWidget(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [CartBadgeWidget()],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                automaticallyImplyLeading: false,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(DashSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(height: DashSizes.defaultSpaceItem),
                      SearchbarWidget(padding: EdgeInsets.zero),
                      SizedBox(height: DashSizes.defaultSpaceSection),
                      // featured brands title
                      DashSectionHeaderWidget(text: "Featured Brands"),
                      SizedBox(height: DashSizes.defaultSpaceSection),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 80,
                              mainAxisSpacing: DashSizes.gridViewSpacing,
                              crossAxisSpacing: DashSizes.gridViewSpacing,
                            ),
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return FeaturedCardWidget();
                        },
                      ),
                    ],
                  ),
                ),
                bottom: DashTabbarWidget(
                  tabs: [
                    Tab(text: "Clothes"),
                    Tab(text: "Shoes"),
                    Tab(text: "Accessories"),
                    Tab(text: "Electronics"),
                    Tab(text: "Home & Living"),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              CategoryTabviewWidget(),
              CategoryTabviewWidget(),
              CategoryTabviewWidget(),
              CategoryTabviewWidget(),
              CategoryTabviewWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTabviewWidget extends StatelessWidget {
  const CategoryTabviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(DashSizes.defaultSpace),

          child: Column(
            children: [
              // brand with products
              BrandShowcaseWIdget(),
              BrandShowcaseWIdget(),
              BrandShowcaseWIdget(),
              const SizedBox(height: DashSizes.defaultSpaceSection),
              DashSectionHeaderWidget(text: "You might like"),
              const SizedBox(height: DashSizes.defaultSpaceItem),
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
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: DashSizes.sm,
                    ),
                    child: ProductCardVerticalWidget(),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BrandShowcaseWIdget extends StatelessWidget {
  const BrandShowcaseWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: DashSizes.defaultSpaceItem),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: DashColors.borderSecondary, width: 0.5),
        borderRadius: BorderRadius.circular(DashSizes.cardRadiusMd),
      ),
      child: Column(
        children: [
          FeaturedCardWidget(showBorder: false),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: DashSizes.xs),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 6,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: DashColors.neutralMedium,
                      borderRadius: BorderRadius.circular(
                        DashSizes.cardRadiusMd,
                      ),
                    ),
                    height: 100,
                    // width: 100,
                    child: RiveAnimation.asset(
                      riveHomeBackground,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: DashColors.neutralMedium,
                      borderRadius: BorderRadius.circular(
                        DashSizes.cardRadiusMd,
                      ),
                    ),
                    height: 100,
                    // width: 100,
                    child: RiveAnimation.asset(
                      riveHomeBackground,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: DashColors.neutralMedium,
                      borderRadius: BorderRadius.circular(
                        DashSizes.cardRadiusMd,
                      ),
                    ),
                    height: 100,
                    // width: 100,
                    child: RiveAnimation.asset(
                      riveHomeBackground,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
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

class FeaturedCardWidget extends StatelessWidget {
  const FeaturedCardWidget({super.key, this.showBorder = true});

  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(DashSizes.sm),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border:
            showBorder
                ? Border.all(color: DashColors.borderSecondary, width: 0.5)
                : null,
        borderRadius: BorderRadius.circular(DashSizes.cardRadiusMd),
      ),
      child: Row(
        spacing: 4,
        children: [
          // image of brand
          Flexible(
            child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: RiveAnimation.asset(
                riveHomeBackground,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BrandTitleAndVerificationWIdget(
                  brandTextSize: BrandTextSize.large,
                ),
                Text(
                  "238 products",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
