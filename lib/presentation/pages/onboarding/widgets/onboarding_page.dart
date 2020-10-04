import 'package:flutter/material.dart';
import 'package:my_proj/application/onboarding/color_provider.dart';
import 'package:my_proj/domain/onboarding/onboard_page_model.dart';
import 'package:provider/provider.dart';

class OnboardingPage extends StatefulWidget {
  final PageController pageController;
  final OnboardPageModel pageModel;

  const OnboardingPage(
      {Key key, @required this.pageModel, @required this.pageController})
      : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> heroAnimation;
  Animation<double> borderAnimation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 750));

    heroAnimation = Tween<double>(begin: -40, end: 0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.bounceOut));
    borderAnimation = Tween<double>(begin: 75, end: 50).animate(
        CurvedAnimation(parent: animationController, curve: Curves.bounceOut));

    animationController.forward(from: 0);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  _nextButtonPressed() {
    Provider.of<ColorProvider>(context).color =
        widget.pageModel.nextAccentColor;
    widget.pageController.nextPage(
      duration: Duration(
        milliseconds: 100,
      ),
      curve: Curves.fastLinearToSlowEaseIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: widget.pageModel.primeColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              /* AnimatedBuilder(
                animation: heroAnimation,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(heroAnimation.value, 0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: Image.asset(widget.pageModel.imagePath),
                    ),
                  );
                },
              ), */
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Container(
                  height: 350,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(widget.pageModel.questionText,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          widget.pageModel.caption,
                          style: TextStyle(
                              fontSize: 24,
                              color:
                                  widget.pageModel.accentColor.withOpacity(0.8),
                              letterSpacing: 1,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          widget.pageModel.subhead,
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: widget.pageModel.accentColor,
                              letterSpacing: 1,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          widget.pageModel.description,
                          style: TextStyle(
                            fontSize: 18,
                            color:
                                widget.pageModel.accentColor.withOpacity(0.9),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
