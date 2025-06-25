import 'package:dashstore/common/widget/appbar/dash_appbar_widget.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../widget/home/vertical_product_card.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DashAppbarWidget(
        title: Text(
          'WishList',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton.outlined(
            onPressed: () {},
            icon: Icon(IconsaxPlusLinear.additem, size: 24),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DashSizes.defaultSpace),
          child: Column(
            children: [
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
      ),
    );
  }
}
