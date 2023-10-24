import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_02/core/const/color_const.dart';

import '../../../core/helpers/asset_helpers.dart';

class StaffHome extends StatefulWidget {
  static const routName = 'staffHome';
  const StaffHome({super.key});

  @override
  State<StaffHome> createState() => _StaffHomeState();
}

class _StaffHomeState extends State<StaffHome> {
  static const List<String> sampleImages = [
    AssetHelper.imageBanner,
    AssetHelper.imageBanner1,
    AssetHelper.imageBanner2
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.bgColor,
      body: CustomScrollView(
        primary: false,
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            backgroundColor: ColorPalette.primaryColor.withOpacity(0.2),
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    AssetHelper.imageBanner,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.4),
                  ),
                ],
              ),
              titlePadding: const EdgeInsets.only(bottom: 80),
              centerTitle: true,
              title: const Text(
                "Hello, How are you today?",
                style: TextStyle(
                  fontSize: 15,
                  color: ColorPalette.bgColor,
                ),
              ),
            ),
            expandedHeight: 200,
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  width: 900,
                ),
                FanCarouselImageSlider(
                  imagesLink: sampleImages,
                  sliderHeight: 200,
                  sliderWidth: 700,
                  isAssets: true,
                  autoPlay: false,
                  imageRadius: 12,
                  autoPlayInterval: const Duration(milliseconds: 10000),
                  expandedImageFitMode: BoxFit.contain,
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Today requests",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: ColorPalette.textColor,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          const SliverToBoxAdapter(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 55,
              child: Center(
                child: Text(
                  '© Copyright of Apartee',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: ColorPalette.textColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
