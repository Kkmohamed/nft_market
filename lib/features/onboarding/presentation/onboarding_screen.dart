import 'package:flutter/material.dart';
import 'package:nft_market/core/resources/app_colors.dart';
import 'package:nft_market/features/onboarding/presentation/widgets/onboarding_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kLightPurple,
      body: SafeArea(child: OnboardingBody()),
    );
  }
}
