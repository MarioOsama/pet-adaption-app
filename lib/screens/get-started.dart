import 'package:flutter/material.dart';
import 'package:pet_adaption_app/main.dart';
import 'package:pet_adaption_app/widgets/animated-container.dart';
import 'package:pet_adaption_app/widgets/register.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  bool _isGetStarted = true;
  double _sizedBoxHeight = 30.0;
  late double _height;

  @override
  void initState() {
    super.initState();
    _height = 550;
  }

  void _toggleHeight() {
    setState(() {
      if (_isGetStarted) _height = 375;
      _isGetStarted = false;
      _sizedBoxHeight = 20.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          CustomAnimatedContainer(height: _height),
          SizedBox(
            height: _sizedBoxHeight,
          ),
          Text(
            'Re-Home and \n   Adopt a Pet',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            'Adopt me, we both need the love',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(
            height: _sizedBoxHeight,
          ),
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 500),
            crossFadeState: _isGetStarted
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            firstCurve: Curves.decelerate,
            secondCurve: Curves.easeIn,
            sizeCurve: Curves.easeInExpo,
            firstChild: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _toggleHeight();
                  });
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                  backgroundColor: textColor,
                ),
                child: Text(
                  'Get Started',
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
            secondChild: const RegisterWidget(),
          ),
        ],
      ),
    ));
  }
}
