import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tunes/common/widgets/button/basic_app_button.dart';
import 'package:tunes/core/config/assets/app_images.dart';
import 'package:tunes/core/config/assets/app_vectors.dart';
import 'package:tunes/core/config/theme/app_colors.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppImages.introBG),
          )),
        ),
        Container(
          color: Colors.black.withAlpha(190),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 40.0,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      AppVectors.logo,
                      height: 80,
                      width: 200,
                    )),
                Spacer(),
                Text(
                  "Enjoy Listening To Your Favourite Tunes",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  "Dive deep into the world of music with Tunes, The Latest of the generation of music players",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: AppColors.grey),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                BasicAppButton(onPressed: () {}, title: "Get Started")
              ],
            ),
          ),
        )
      ],
    ));
  }
}
