import 'package:dashstore/common/cubit/navigation_menu_cubit.dart';
import 'package:dashstore/feature/shop/presentation/screen/home_screen.dart';
import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:dashstore/utilities/helper/dash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  static const String route = '/menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(child: BottomMenuWidget()),
      body: BlocSelector<NavigationMenuCubit, NavigationMenuState, int>(
        selector: (state) {
          return state.currentTabIndex;
        },
        builder:
            (context, state) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child:
                  [
                    HomeScreen(),
                    Container(color: Colors.blue),
                    Container(color: Colors.green),
                    Container(color: Colors.orange),
                  ][state],
            ),
      ),
    );
  }
}

class BottomMenuWidget extends StatelessWidget {
  const BottomMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DashHelper.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: DashSizes.defaultSpaceSection,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: FittedBox(
          child: GNav(
            curve: Curves.easeInCubic,
            haptic: true,
            tabMargin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
            tabBorderRadius: 30,
            backgroundColor:
                isDark ? DashColors.onBackground : DashColors.neutralSoft,
            tabBackgroundColor:
                isDark ? DashColors.primary : DashColors.neutralLight,
            onTabChange:
                (value) =>
                    context.read<NavigationMenuCubit>().onTabChange(value),
            tabs: [
              GButton(icon: IconsaxPlusLinear.home_2, text: "Home"),
              GButton(icon: IconsaxPlusLinear.shop_add, text: "Store"),
              GButton(icon: IconsaxPlusLinear.heart, text: "Wishlist"),
              GButton(icon: IconsaxPlusLinear.user, text: "Profile"),
            ],
            gap: 8,
          ),
        ),
      ),
    );
  }
}
