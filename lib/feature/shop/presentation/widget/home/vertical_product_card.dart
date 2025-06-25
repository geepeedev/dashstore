import 'package:dashstore/common/widget/icon/wish_list_icon.dart';
import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/constants/enums.dart';
import 'package:dashstore/utilities/constants/rive_string.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:dashstore/utilities/helper/dash_helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:rive/rive.dart';

class ProductCardVerticalWidget extends StatelessWidget {
  const ProductCardVerticalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: EdgeInsets.only(top: 1, right: 0, left: 0, bottom: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DashSizes.cardRadiusLg),
        color:
            DashHelper.isDarkMode(context)
                ? const Color.fromARGB(255, 73, 73, 73)
                : DashColors.neutralSoft,
      ),
      child: Column(
        children: [
          // product image, wishlist and tag
          Container(
            height: 180,
            padding: EdgeInsets.all(DashSizes.sm),
            decoration: BoxDecoration(
              color:
                  DashHelper.isDarkMode(context)
                      ? DashColors.neutralSoft
                      : DashColors.surface,
              borderRadius: BorderRadius.circular(DashSizes.borderRadiusMd),
            ),

            child: Stack(
              children: [
                Stack(
                  children: [
                    RiveAnimation.asset(
                      riveHomeBackground,
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: DashSizes.sm,
                              vertical: DashSizes.xs,
                            ),
                            decoration: BoxDecoration(
                              color: DashColors.validationWarning,
                              borderRadius: BorderRadius.circular(DashSizes.xs),
                            ),
                            child: Text(
                              '24% off',
                              style: Theme.of(
                                context,
                              ).textTheme.labelLarge?.apply(
                                color: DashColors.onBackground,
                                fontWeightDelta: 2,
                              ),
                            ),
                          ),
                          WishListIconWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: DashSizes.defaultSpaceItem / 2),
          Padding(
            padding: EdgeInsets.only(left: DashSizes.sm),
            child: Column(
              children: [
                Text(
                  "New AirForce jordan forcing",
                  style: Theme.of(context).textTheme.labelLarge,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: DashSizes.defaultSpaceItem / 2),
                BrandTitleAndVerificationWIdget(),

                // price\
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              Text(
                "\$23.4",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.end,
                maxLines: 1,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Container(
                width: DashSizes.iconLg * 1.2,
                height: DashSizes.iconLg * 1.2,
                decoration: BoxDecoration(
                  color: DashColors.onBackground,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(DashSizes.cardRadiusLg),
                    topLeft: Radius.circular(DashSizes.borderRadiusMd),
                  ),
                ),
                child: Icon(
                  IconsaxPlusLinear.add,
                  color: DashColors.background,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BrandTitleAndVerificationWIdget extends StatelessWidget {
  const BrandTitleAndVerificationWIdget({
    super.key,
    this.brandName = "Nike",
    this.brandTextSize = BrandTextSize.medium,
  });
  final String brandName;
  final BrandTextSize brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          brandName,
          style: switch (brandTextSize) {
            BrandTextSize.small => Theme.of(context).textTheme.labelSmall,

            BrandTextSize.medium => Theme.of(context).textTheme.labelMedium,

            BrandTextSize.large => Theme.of(context).textTheme.titleLarge,
          },
        ),
        Icon(
          IconsaxPlusBold.verify,
          size: DashSizes.iconSm,
          color: DashColors.primary,
        ),
      ],
    );
  }
}
