import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_market/core/resources/app_assets.dart';
import 'package:nft_market/core/resources/app_sizes.dart';

class StateBody extends StatelessWidget {
  const StateBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppSizes.ph27),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.stacked_bar_chart, color: Colors.white),
                  SizedBox(width: AppSizes.pw8),
                  Text(
                    "Ranking",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: AppSizes.sp20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: AppSizes.pw16),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.add_chart, color: Colors.white),
                  SizedBox(width: AppSizes.pw8),
                  Text(
                    "Activity",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: AppSizes.sp20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: AppSizes.ph5),
        Divider(color: Color(0xff432369), thickness: 1),
        SizedBox(height: AppSizes.ph27),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CategoryItem(title: "All Categories", icon: Icons.apps),
            CategoryItem(title: "All Cahins", icon: Icons.link),
          ],
        ),
        SizedBox(height: AppSizes.ph27),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(AppSizes.r20),
              topRight: Radius.circular(AppSizes.r20),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.pw8),
                child: Container(
                  color: Colors.white.withValues(alpha: .1),
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return TableRowItem(
                        indx: index + 1,
                        img: AppAssets.art,
                        percent: -.05,
                        number: 200055.02,
                        title: 'Azumi',
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: AppSizes.ph10);
                    },
                    itemCount: 10,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TableRowItem extends StatelessWidget {
  const TableRowItem({
    super.key,
    required this.img,
    required this.title,

    required this.number,
    required this.percent,
    required this.indx,
  });

  final String img, title;
  final double number, percent;
  final int indx;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.pw16),
      child: Row(
        children: [
          Text(
            indx.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: AppSizes.sp16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(width: AppSizes.pw8),
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.r8),
            child: Image.asset(
              AppAssets.art,
              fit: BoxFit.cover,
              width: AppSizes.w50,
              height: AppSizes.h50,
            ),
          ),
          SizedBox(width: AppSizes.pw10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: AppSizes.sp20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "view info",
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.7),
                  fontSize: AppSizes.sp16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.pattern_sharp,
                    color: Colors.white.withValues(alpha: 0.7),
                  ),
                  Text(
                    number.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: AppSizes.sp12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Text(
                "$percent%",
                style: TextStyle(
                  color: percent > 0 ? Color(0xff34C759) : Color(0xffFF453A),
                  fontSize: AppSizes.sp16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.title, this.icon});
  final String title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.r27),
        color: Color(0xff422268).withValues(alpha: 0.4),
      ),
      height: AppSizes.h50,
      width: AppSizes.w157,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white.withValues(alpha: 0.7)),
          SizedBox(width: AppSizes.pw5),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: AppSizes.sp16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white.withValues(alpha: 0.7),
          ),
        ],
      ),
    );
  }
}
