import '../core/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../core/constants/assets_constants.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: ResponsiveLayout.isSmallScreen(context) ? 42 : 72,
          child: Image.asset(
            logoImagePath,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          "Attorneys",
          style: TextStyle(
            fontSize: ResponsiveLayout.isSmallScreen(context) ? 20 : 32,
          ),
        )
      ],
    );
  }
}
