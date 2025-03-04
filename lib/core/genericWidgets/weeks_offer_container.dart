import 'package:flutter/material.dart';

import '../constants/app_images.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';

class WeeksOfferContainer extends StatelessWidget {
  const WeeksOfferContainer(
      {super.key,
      required this.title,
      required this.description,
      required this.subTitle,
      this.visibleDish,
      required this.mainContainer,
      this.subDescription});

  final String title;
  final String description;
  final String? subDescription;
  final String subTitle;
  final bool? visibleDish;
  final bool mainContainer;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: AppColors.subTitleColor,
          ),
          child: Stack(
            children: [
              Positioned(
                top: mainContainer ? 0 : null,
                bottom: mainContainer ? null : 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                    borderRadius: mainContainer
                        ? BorderRadius.only(
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                            topLeft: Radius.circular(24),
                          )
                        : BorderRadius.only(
                            topRight: Radius.circular(100),
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(24),
                          ),
                    color: mainContainer
                        ? AppColors.yellowColor
                        : AppColors.veryLightPurple,
                  ),
                ),
              ),
              Positioned(
                bottom: mainContainer ? 0 : null,
                top: mainContainer ? null : 0,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.height * 0.12,
                  decoration: BoxDecoration(
                    borderRadius: mainContainer
                        ? BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomRight: Radius.circular(24),
                          )
                        : BorderRadius.only(
                            bottomLeft: Radius.circular(100),
                            topRight: Radius.circular(24),
                          ),
                    color: mainContainer
                        ? AppColors.yellowColor
                        : AppColors.veryLightPurple,
                  ),
                ),
              ),
              //image
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title),
                    Row(
                      children: [
                        Text(
                          description,
                          style: AppTextStyle.f16w600White(context)
                              .copyWith(color: Colors.black),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          subDescription ?? '',
                          style: AppTextStyle.f16w600White(context)
                              .copyWith(color: Colors.deepPurple),
                        ),
                      ],
                    ),
                    Text(subTitle),
                  ],
                ),
              ),
            ],
          ),
        ),
        Visibility(
          visible: visibleDish ?? false,
          child: Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              height: MediaQuery.of(context).size.height * 0.13,
              width: MediaQuery.of(context).size.height * 0.13,
              AppImages.platePng,
            ),
          ),
        ),
      ],
    );
  }
}
