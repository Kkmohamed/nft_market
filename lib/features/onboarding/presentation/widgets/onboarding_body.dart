import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_market/core/resources/app_assets.dart';
import 'package:nft_market/core/resources/app_colors.dart';
import 'package:nft_market/core/resources/app_sizes.dart';
import 'package:nft_market/core/resources/app_strings.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.r45),
        image: DecorationImage(
          image: AssetImage(AppAssets.onboardingBackground),
          fit: BoxFit.fill,
        ),
        gradient: LinearGradient(
          colors: [AppColors.kDarkPurple, AppColors.kLightPurple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.pw26),
        child: Column(
          children: [
            SizedBox(height: AppSizes.ph80),
            WelcomeMessage(),
            Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.r20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: AppSizes.ph27),
                        Text(
                          AppStrings.onboardingSubtitle1,
                          style: TextStyle(
                            fontSize: AppSizes.sp20,
                            fontFamily: AppAssets.sfprodisplay,
                            color: AppColors.kWhite,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: AppSizes.ph5),
                        Text(
                          textAlign: TextAlign.center,
                          AppStrings.onboardingSubtitle2,
                          style: TextStyle(
                            fontSize: AppSizes.sp12,
                            fontFamily: AppAssets.sfprodisplay,
                            color: Colors.grey[200],
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(AppSizes.pw26),
                          child: GetStrartedButton(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: AppSizes.ph120),
          ],
        ),
      ),
    );
  }
}

class GetStrartedButton extends StatelessWidget {
  const GetStrartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(AppSizes.w198, AppSizes.h45),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppSizes.r20,
          ),
        ),
      ),
    
      onPressed: () {},
      child: Text(
        AppStrings.getStarted,
        style: TextStyle(
          color: AppColors.kWhite,
          fontWeight: FontWeight.w600,
          fontSize: AppSizes.sp16,
        ),
      ),
    );
  }
}

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.onboardingTitle,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: AppSizes.sp42,
        fontFamily: AppAssets.sfprodisplay,
        color: AppColors.kWhite,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
