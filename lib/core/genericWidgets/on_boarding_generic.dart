import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../theme/app_text_style.dart';

class OnBoardingGeneric extends StatelessWidget {
  const OnBoardingGeneric({
    super.key,
    required this.title,
    required this.description,
    required this.lottie,
  });

  final String title;
  final String description;
  final String lottie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Lottie.asset(lottie)),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Column(
            children: [
              Text(
                title,
                style:
                    AppTextStyle.f32w700White(context).copyWith(fontSize: 24),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                description,
                style: AppTextStyle.f16w200subTitleColorOpacity70(context),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
      ],
    );
  }
}
