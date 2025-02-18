import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tunes/common/widgets/button/basic_app_button.dart';
import 'package:tunes/core/config/assets/app_images.dart';
import 'package:tunes/core/config/assets/app_vectors.dart';
import 'package:tunes/presentation/choose_mode/bloc/theme_cubit.dart';
import 'package:tunes/testpage.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppImages.chooseModeBG),
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
                  "Choose Mode",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        BlocBuilder<ThemeCubit, ThemeMode>(
                            builder: (context, theme) {
                              return GestureDetector(
                                onTap: () {
                                  context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                                },
                                child: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: theme == ThemeMode.light
                                        ? Colors.grey.shade700 // Highlight if light mode is selected
                                        : Color.fromARGB(15, 95, 95, 95),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    CupertinoIcons.brightness,
                                    color: Colors.white,
                                  ),
                                ),
                              );
                            },
                          ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Light Mode",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(width: 40),
                    Column(
                      children: [
                        BlocBuilder<ThemeCubit, ThemeMode>(
                          builder: (context, theme) {
                            return GestureDetector(
                              onTap: () {
                                context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                              },
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: theme == ThemeMode.dark
                                      ? Colors.grey.shade700 // Highlight if dark mode is selected
                                      : Color.fromARGB(15, 95, 95, 95),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  CupertinoIcons.moon,
                                  color: Colors.white,
                                ),
                              ),
                            );
                          },
                        ),

                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Dark Mode",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Testpage()));
                    },
                    title: "Continue")
              ],
            ),
          ),
        )
      ],
    ));
  }
}
