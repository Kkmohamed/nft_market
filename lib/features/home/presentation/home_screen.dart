import 'package:flutter/material.dart';
import 'package:nft_market/core/resources/app_assets.dart';
import 'package:nft_market/core/resources/app_colors.dart';
import 'package:nft_market/core/resources/app_sizes.dart';
import 'package:nft_market/core/resources/app_strings.dart';
import 'package:nft_market/features/home/presentation/widgets/custom_bottom_navbar.dart';
import 'package:nft_market/features/home/presentation/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CustomBottomNavbar(),
      backgroundColor: AppColors.kDarkBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppSizes.h64),
        child: HomeAppBar(),
      ),
      body: SafeArea(child: HomeBody()),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        AppStrings.appName,
        style: TextStyle(
          color: AppColors.kWhite,
          fontSize: AppSizes.sp28,
          fontFamily: AppAssets.sfprodisplay,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
