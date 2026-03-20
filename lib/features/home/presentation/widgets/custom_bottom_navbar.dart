import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_market/core/resources/app_sizes.dart';
import 'package:nft_market/core/resources/route_manager.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.h122,
      child: Stack(
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
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteNames.kStateRoute);
                      },
                      icon: Icon(Icons.stacked_bar_chart, size: AppSizes.r40),
                      color: Colors.white,
                    ),
                    Container(height: AppSizes.h40),
                    Icon(Icons.search, color: Colors.white, size: AppSizes.r40),
                    Icon(Icons.person, color: Colors.white, size: AppSizes.r40),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              height: AppSizes.h70,
              width: AppSizes.w70,
              decoration: ShapeDecoration(
                color: Colors.white.withValues(alpha: 0.7),
                shape: StarBorder.polygon(sides: 6, pointRounding: .5),
              ),
              child: Icon(Icons.add, color: Colors.white, size: AppSizes.r25),
            ),
          ),
        ],
      ),
    );
  }
}
