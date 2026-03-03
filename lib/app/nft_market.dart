import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nft_market/core/resources/route_manager.dart';

class NftMarket extends StatelessWidget {
  const NftMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(378.3888854980469, 787.4092407226562),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NFT Market',
        theme: ThemeData(primarySwatch: Colors.blue),
        routes: RouteManager.routes,
        initialRoute: RouteNames.kOnboardingRoute,
      ),
    );
  }
}
