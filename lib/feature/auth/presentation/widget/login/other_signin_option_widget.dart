import 'package:flutter/material.dart';

class OtherSigninOptionWidget extends StatelessWidget {
  const OtherSigninOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8,
      children: [
        IconButton.outlined(
          onPressed: () {},
          icon: Icon(Icons.g_mobiledata_sharp),
        ),
        IconButton.outlined(onPressed: () {}, icon: Icon(Icons.facebook_sharp)),
      ],
    );
  }
}
