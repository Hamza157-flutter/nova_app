import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nova_app/core/genericWidgets/general_button.dart';
import 'package:nova_app/core/theme/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../../core/theme/app_text_style.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(AppImages.chevronLeft),
              Text(
                'Cart',
                style:
                    AppTextStyle.f32w700White(context).copyWith(fontSize: 24),
              ),
              SizedBox(
                height: 24,
                width: 24,
              ),
            ],
          ), // Row of title
          SizedBox(
            height: 32,
          ),
          Expanded(
            flex: 8,
            child: SizedBox(
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.16,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: AppColors.purpleColor),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                AppImages.plate3,
                                height: 100,
                                width: 100,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Planet Taste',
                                    style: AppTextStyle.f16w600White(context),
                                  ),
                                  Text(
                                    '\$10.00',
                                    style: AppTextStyle.f16w600White(context),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.2, //TODO: mediaQuery
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 22,
                                          width: 22,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                Colors.white.withOpacity(0.18),
                                          ),
                                          child: Center(
                                            child: SvgPicture.asset(
                                              AppImages.minus,
                                              height: 3,
                                              width: 3,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '2',
                                          style: AppTextStyle.f16w600White(
                                              context),
                                        ),
                                        SvgPicture.asset(AppImages.plus),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 12,
                  );
                },
                itemCount: 5,
              ),
            ),
          ), //meals in cart
          SizedBox(
            height: 12,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.purpleColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Total:',
                    style: AppTextStyle.f16w600White(context),
                  ),
                  Text(
                    '\$ 60.00',
                    style: AppTextStyle.f16w600White(context),
                  ),
                ],
              ),
            ),
          ), //total container
          SizedBox(
            height: 32,
          ),
          Expanded(child: GeneralButton(text: 'Continue', onPressed: () {})),
          Spacer(),
        ],
      ),
    );
  }
}
