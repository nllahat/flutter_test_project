import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_proj/application/onboarding/onboarding_bloc.dart';
import 'package:my_proj/infrastructure/onboarding/onboarding_data.dart';
import 'package:my_proj/presentation/pages/onboarding/widgets/onboarding_page.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../injection.dart';

final titleString = '''
A few questions before
we get started
''';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController pageController = PageController();
  int currentPageIndex = 1;

  @override
  void initState() {
    super.initState();

    /// Attach a listener which will update the state and refresh the page index
    pageController.addListener(() {
      if (pageController.page.round() + 1 != currentPageIndex) {
        setState(() {
          currentPageIndex = pageController.page.round() + 1;
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff080D11),
        body: BlocProvider(
            create: (context) => getIt<OnboardingBloc>(),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      top: currentPageIndex == 1 ? 220.0 : 150.0),
                  child: PageView.builder(
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
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AnimatedSwitcher(
                      duration: Duration(seconds: 1),
                      child: currentPageIndex == 1
                          ? Padding(
                              padding: const EdgeInsets.only(top: 70.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                textBaseline: TextBaseline.alphabetic,
                                children: <Widget>[
                                  Text(
                                    'on',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 55.0),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    'field',
                                    style: TextStyle(
                                        color: Color(0xff54FFF9),
                                        fontSize: 55.0),
                                  ),
                                ],
                              ))
                          : SizedBox(
                              height: 50.0,
                            ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          SizedBox(
                            height: 70,
                            child: VerticalDivider(
                              color: Color(0xff54FFF9),
                              thickness: 5,
                              width: 10,
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            titleString,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                wordSpacing: 1.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(50.0),
                        child: LinearPercentIndicator(
                          progressColor: Color(0xff54FFF9),
                          lineHeight: 14.0,
                          percent: currentPageIndex / onboardData.length,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          backgroundColor: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}
