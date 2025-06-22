import 'package:dashstore/feature/shop/presentation/widget/home/carousel_item.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';

class PromoSliderWidget extends StatelessWidget {
  const PromoSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(DashSizes.defaultSpace),
      child: Column(
        children: [
          SizedBox(
            height: 210,
            child: CarouselView.weighted(
              itemSnapping: true,
              enableSplash: false,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(DashSizes.cardRadiusMd),
              ),
              flexWeights: [9, 1],
              children: [
                CarouselItemWidget(),
                CarouselItemWidget(),
                CarouselItemWidget(),
                CarouselItemWidget(),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
