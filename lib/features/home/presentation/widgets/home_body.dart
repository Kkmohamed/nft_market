import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_market/core/constants.dart';
import 'package:nft_market/core/resources/app_assets.dart';

import 'package:nft_market/core/resources/app_colors.dart';
import 'package:nft_market/core/resources/app_sizes.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.pw16),
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          SizedBox(
            height: AppSizes.h167,
            child: ListView.separated(
              physics: const ClampingScrollPhysics(),
              itemCount: Constants.categories.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) =>
                  SizedBox(width: AppSizes.pw10),
              itemBuilder: (context, index) {
                final category = Constants.categories[index];
                return HomeCategoryItem(
                  imagePath: category.image,
                  title: category.title,
                );
              },
            ),
          ),
          SizedBox(height: AppSizes.ph27),
          Text(
            'Trending collections',
            style: TextStyle(
              fontFamily: AppAssets.sfprodisplay,
              color: AppColors.kWhite,
              fontSize: AppSizes.sp24,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: AppSizes.ph5),
          // trending item
          SizedBox(
            height: AppSizes.h194,
            child: ListView.separated(
              physics: const ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final item = Constants.trending[index];
                return TrendingItem(imagePath: item.image, title: item.title);
              },
              separatorBuilder: (context, index) =>
                  SizedBox(width: AppSizes.pw10),
              itemCount: 3,
            ),
          ),
          SizedBox(height: AppSizes.ph27),
          Text(
            'Top seller',
            style: TextStyle(
              fontFamily: AppAssets.sfprodisplay,
              color: AppColors.kWhite,
              fontSize: AppSizes.sp24,
              fontWeight: FontWeight.w600,
            ),
          ),

          SizedBox(height: AppSizes.ph5),
          SizedBox(
            height: AppSizes.h194,
            child: ListView.separated(
              physics: const ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final item = Constants.topseller[index];
                return TrendingItem(
                  imagePath: item.imagePath,
                  title: item.title,
                );
              },
              separatorBuilder: (context, index) =>
                  SizedBox(width: AppSizes.pw10),
              itemCount: 3,
            ),
          ),
          SizedBox(height: AppSizes.ph5),
        ],
      ),
    );
  }
}

class TrendingItem extends StatelessWidget {
  const TrendingItem({super.key, required this.imagePath, required this.title});

  final String imagePath, title;
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSizes.r27),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: Colors.white.withValues(alpha: 0.1),
            height: AppSizes.h194,
            width: AppSizes.w157,
            padding: EdgeInsets.all(AppSizes.pw9),
            child: Column(
              children: [
                Image.asset(
                  imagePath,
                  height: AppSizes.h140,
                  width: AppSizes.w140,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: AppSizes.ph10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: AppAssets.sfprodisplay,
                        color: AppColors.kWhite,
                        fontSize: AppSizes.sp16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '❤️ 200',
                      style: TextStyle(
                        fontFamily: AppAssets.sfprodisplay,
                        color: AppColors.kWhite,
                        fontSize: AppSizes.sp16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeCategoryItem extends StatelessWidget {
  const HomeCategoryItem({
    super.key,
    required this.imagePath,
    required this.title,
  });
  final String imagePath, title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(AppSizes.r27),
          child: Image.asset(
            imagePath,
            width: AppSizes.w252,
            height: AppSizes.h167,
            fit: BoxFit.fill,
          ),
        ),
        // Blur effect overlay
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.r27),
            child: Container(color: Colors.transparent),
          ),
        ),
        // Gradient overlay with blur-friendly design
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: AppSizes.h45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(AppSizes.r27),
                bottomRight: Radius.circular(AppSizes.r27),
              ),
              gradient: LinearGradient(
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
                tileMode: TileMode.clamp,
                colors: [
                  Colors.black.withValues(alpha: 0.7),
                  Colors.black.withValues(alpha: 0.3),
                  Colors.transparent,
                ],
                stops: const [0.0, 0.5, 1.0],
              ),
            ),
          ),
        ),
        // Text positioned in the gradient area
        Positioned(
          bottom: AppSizes.ph10,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppAssets.sfprodisplay,
                color: AppColors.kWhite,
                fontSize: AppSizes.sp20,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black.withValues(alpha: 0.5),
                    blurRadius: 4,
                    offset: const Offset(1, 1),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
