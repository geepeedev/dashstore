import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  static const String route = '/password-reset';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(DashSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Forget Password",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: DashSizes.defaultSpaceItem),
                  Text(
                    "Don't worry sometimes people forget. Input your email so we send a password reset link.",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  SizedBox(height: DashSizes.defaultSpaceSection),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(IconsaxPlusLinear.arrow_right_2),
                    ),
                  ),
                  SizedBox(height: DashSizes.defaultSpaceItem),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          DashColors.primary,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Submit',
                        style: Theme.of(context).textTheme.bodyMedium?.apply(
                          color: DashColors.onPrimary,
                          fontWeightDelta: 2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
