import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_market/core/resources/app_sizes.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(AppSizes.r45),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.white.withValues(alpha: 0.1),
              width: double.infinity,
              height: AppSizes.h90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home, color: Colors.white, size: AppSizes.r40),
                  Icon(
                    Icons.stacked_bar_chart,
                    color: Colors.white,
                    size: AppSizes.r40,
                  ),
                  Container(height: AppSizes.h40),
                  Icon(Icons.search, color: Colors.white, size: AppSizes.r40),
                  Icon(Icons.person, color: Colors.white, size: AppSizes.r40),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: AppSizes.h70,
          width: AppSizes.w70,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: StarBorder.polygon(sides: 6),
          ),
        ),
      ],
    );
  }
}
