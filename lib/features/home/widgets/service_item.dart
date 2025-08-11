import '../../../core/utils/responsive.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';

class ServiceItem extends StatefulWidget {
  final String title;
  final String description;
  final String serviceImage;

  const ServiceItem({
    Key? key,
    required this.title,
    required this.description,
    required this.serviceImage,
  }) : super(key: key);

  @override
  State<ServiceItem> createState() => _ServiceItemState();
}

class _ServiceItemState extends State<ServiceItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: ResponsiveLayout.isLargeScreen(context)
            ? size.height * 0.6
            : size.height,
      ),
      child: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(48),
        alignment: Alignment.center,
        width: ResponsiveLayout.isLargeScreen(context)
            ? size.width * 0.25
            : double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.lightBrightBrownColorCardColor,
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              widget.serviceImage,
              height: ResponsiveLayout.isSmallScreen(context) ? 40 : 60,
              width: ResponsiveLayout.isSmallScreen(context) ? 40 : 60,
              color: AppColors.white,
            ),
            const SizedBox(height: 16),
            Text(
              widget.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: ResponsiveLayout.isSmallScreen(context) ? 18 : 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 18),
            Text(
              widget.description,
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w100,
                wordSpacing: 1.3,
                fontSize: ResponsiveLayout.isSmallScreen(context) ? 10 : 14,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            MouseRegion(
              onEnter: (_) => setState(() => isHovered = true),
              onExit: (_) => setState(() => isHovered = false),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // sharp square edges
                  ),
                  foregroundColor: isHovered ? Colors.white : AppColors.white,
                  backgroundColor:
                      isHovered ? AppColors.red : Colors.transparent,
                  side: BorderSide(
                    color: isHovered
                        ? AppColors.red
                        : AppColors.lightBrightBrownColorCardColor,
                  ),
                  minimumSize: const Size(50, 50), // ensures square shape
                ),
                onPressed: () {},
                child: const Text('Learn More'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
