import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_market/core/resources/app_assets.dart';
import 'package:nft_market/core/resources/app_colors.dart';
import 'package:nft_market/core/resources/app_sizes.dart';
import 'package:nft_market/core/resources/app_strings.dart';
import 'package:nft_market/features/state/presentation/widgets/state_body.dart';

class StateScreen extends StatelessWidget {
  const StateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: StateBody()),
      backgroundColor: AppColors.kDarkBackground,
      appBar: AppBar(
        backgroundColor: AppColors.kDarkBackground,
        title: Text(
          AppStrings.stats,
          style: TextStyle(
            color: AppColors.kWhite,
            fontSize: AppSizes.sp24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: AppSizes.pw16),
            child: SvgPicture.asset(AppAssets.dots, width: AppSizes.r25),
          ),
        ],
      ),
    );
  }
}
