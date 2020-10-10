import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_proj/application/onboarding/onboarding_bloc.dart';
import 'package:my_proj/domain/onboarding/onboard_page_model.dart';

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
    widget.pageController.nextPage(
      duration: Duration(
        milliseconds: 100,
      ),
      curve: Curves.fastLinearToSlowEaseIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingBloc, OnboardingState>(
        listener: (context, state) {
      state.saveFailureOrSuccessOption.fold(
        () {},
        (either) {
          either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  insufficientPermissions: (_) => 'Insufficient Permissions',
                  unableToCreate: (_) => 'Error on create',
                  unexpected: (_) => 'Unexpected error',
                ),
              ).show(context);
            },
            (_) {
              /* Router.navigator.pushReplacementNamed(Router.notesOverviewPage);
                context
                    .bloc<AuthBloc>()
                    .add(const AuthEvent.authCheckRequested()); */
            },
          );
        },
      );
    }, builder: (context, state) {
      return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 50.0, left: 22.0, right: 22.0),
              child: Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff54FFF9).withAlpha(70),
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                        offset: Offset(
                          0.0,
                          3.0,
                        ),
                      ),
                    ],
                    color: Color(0xff54FFF9),
                    borderRadius: BorderRadius.all(Radius.circular(18))),
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(widget.pageModel.questionText,
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(color: Colors.black54, fontSize: 21.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            widget.pageModel.contentWidget,
            SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: 175.0,
              height: 50.0,
              child: RaisedButton(
                color: Color(0xffD94853),
                onPressed: _nextButtonPressed,
                child: Text(
                  'next',
                  style: TextStyle(
                      color: Colors.white, fontSize: 19.0, letterSpacing: 1.0),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0)),
              ),
            ),
          ],
        ),
      );
    });
  }
}
