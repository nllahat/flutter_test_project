import 'package:flutter/material.dart';
import 'package:my_proj/application/onboarding/color_provider.dart';
import 'package:my_proj/infrastructure/onboarding/onboarding_data.dart';
import 'package:my_proj/presentation/pages/onboarding/widgets/onboarding_page.dart';
import 'package:my_proj/presentation/pages/onboarding/widgets/page_view_indicator.dart';
import 'package:provider/provider.dart';

class Onboarding extends StatelessWidget {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    ColorProvider colorProvider = Provider.of<ColorProvider>(context);
    return Stack(
      children: <Widget>[
        PageView.builder(
          controller: pageController,
          physics: NeverScrollableScrollPhysics(),
          itemCount: onboardData.length,
          itemBuilder: (context, index) {
            return OnboardingPage(
              pageController: pageController,
              pageModel: onboardData[index],
            );
          },
        ),
        Container(
          width: double.infinity,
          height: 70,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    'fun with',
                    style: Theme.of(context).textTheme.title.copyWith(
                          color: colorProvider.color,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: colorProvider.color,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 80.0, left: 40),
            child: PageViewIndicator(
              controller: pageController,
              itemCount: onboardData.length,
              color: colorProvider.color,
            ),
          ),
        )
      ],
    );
  }
}
