import 'package:flutter/material.dart';
import 'package:my_proj/infrastructure/onboarding/onboarding_data.dart';
import 'package:my_proj/presentation/pages/onboarding/widgets/onboarding_page.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
      if (pageController.page.round() != currentPageIndex) {
        setState(() {
          currentPageIndex = pageController.page.round();
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
        body: Stack(
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        'on field',
                        style: TextStyle(color: Colors.white, fontSize: 50.0),
                      ),
                    ],
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
                  SizedBox(
                    width: 160.0,
                    height: 41.0,
                    child: RaisedButton(
                      color: Color(0xffD94853),
                      onPressed: () {},
                      child: Text(
                        'next',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(50.0),
                    child: LinearPercentIndicator(
                      progressColor: Colors.lightBlue,
                      lineHeight: 14.0,
                      percent: currentPageIndex / onboardData.length,
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                ],
              ), /*Padding(
                padding: const EdgeInsets.only(),
                child: 
                 PageViewIndicator(
                  controller: pageController,
                  itemCount: onboardData.length,
                  color: colorProvider.color,
                ),
              ),*/
            )
          ],
        ));
  }
}
