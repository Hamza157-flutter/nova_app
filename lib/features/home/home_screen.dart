import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:nova_app/core/constants/app_images.dart';
import 'package:nova_app/core/theme/app_colors.dart';
import 'package:nova_app/core/theme/app_text_style.dart';
import 'package:nova_app/features/home/autoSwappingPage/auto_swapping_page_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Welcome', style: AppTextStyle.f20W600SubTitleColor),
                  ],
                ),
                SvgPicture.asset(AppImages.notification)
              ],
            ), //appbar row
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: AutoSwappingPageView(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: SizedBox(
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 120, //TODO: fixed height
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: AppColors.subTitleColor,
                          ),
                          child: Stack(
                            children: [
                              Container(
                                height: 90, //TODO: fixed height
                                width: 200, //TODO: fixed height
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(100),
                                    bottomRight: Radius.circular(100),
                                    topLeft: Radius.circular(24),
                                  ),
                                  color: AppColors.yellowColor,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  height: 100, //TODO: fixed height
                                  width: 100, //TODO: fixed height
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(100),
                                      bottomRight: Radius.circular(24),
                                    ),
                                    color: AppColors.yellowColor,
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
                                    Text('Week’s Offer'),
                                    Text(
                                      'Free Gift From the store',
                                      style: AppTextStyle.f16w600White
                                          .copyWith(color: Colors.black),
                                    ),
                                    Text('When ordering more then 3 meals'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Image.asset(
                            height: 100, //TODO: fixed height
                            width: 100, //TODO: fixed height
                            AppImages.platePng,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: SizedBox(
                    height: 140, //TODO: fixed height
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: AppColors.subTitleColor,
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  height: 90,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(100),
                                      topLeft: Radius.circular(100),
                                      bottomLeft: Radius.circular(24),
                                    ),
                                    color: AppColors.veryLightPurple,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(100),
                                      topRight: Radius.circular(24),
                                    ),
                                    color: AppColors.veryLightPurple,
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
                                    Text('A Cosmic Deal Has Just Arrived!'),
                                    Row(
                                      children: [
                                        Text(
                                          'Activate Promo Code',
                                          style: AppTextStyle.f16w600White
                                              .copyWith(color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          'NOVA100',
                                          style: AppTextStyle.f16w600White
                                              .copyWith(
                                                  color:
                                                      AppColors.indicatorColor),
                                        ),
                                      ],
                                    ),
                                    Text('Before This Star Fades! '),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ), //weeks offer sizedBox
            SizedBox(
              height: 10,
            ),
            Text(
              'Categories',
              style: AppTextStyle.f20W600SubTitleColor,
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 40, //TODO: fixed height
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 40, //TODO: fixed height
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: AppColors.yellowColor,
                    ),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text('All'),
                    )),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 12,
                  );
                },
                itemCount: 7,
              ),
            ), //categories listview
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order Meal',
                  style: AppTextStyle.f20W600SubTitleColor,
                ),
                Text(
                  'See All',
                  style: AppTextStyle.f16W400SubTitleColor,
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 210, //TODO: fixed height
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 190, //TODO: fixed height
                    width: 135, //TODO: fixed height
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          bottom: 20,
                          child: Container(
                            height: 170, //TODO: fixed height
                            width: 135, //TODO: fixed height
                            decoration: BoxDecoration(
                              color: AppColors.purpleColor,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 65, bottom: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Yakisoba Noodles',
                                    style: AppTextStyle.f10SubTitleW600,
                                  ),
                                  Text(
                                    'Noodle with Pork',
                                    style: AppTextStyle.f10SubTitleW600
                                        .copyWith(
                                            color: AppColors.yellowColor,
                                            fontSize: 8),
                                  ),
                                  Text(
                                    '\$10.00',
                                    style: AppTextStyle.f10SubTitleW600,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Image.asset(
                          AppImages.plate2,
                          height: 90,
                          width: 90,
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 40, //TODO: fixed height
                            width: 40, //TODO: fixed height
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 4,
                                ),
                                shape: BoxShape.circle,
                                color: AppColors.yellowColor),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: SvgPicture.asset(AppImages.cart),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 12,
                  );
                },
                itemCount: 4,
              ),
            ), // Order meal list view
            SizedBox(
              height: 180, //TODO: fixed height
              width: double.infinity,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: 140, //TODO: fixed height
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.purpleColor,
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Column(
                              children: [
                                Text(
                                  'Do you want to prepare your\n meal with the nutritional\n values you need?',
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.f10SubTitleW600,
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: AppColors.yellowColor,
                                    ),
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Text(
                                        'Let’s Go',
                                        style: AppTextStyle.f16w500PrimaryColor,
                                      ),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    AppImages.customMeal,
                    width: 130, //TODO: fixed height
                  ),
                ],
              ),
            ), //Lets go SizedBox
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Galaxy Store',
                  style: AppTextStyle.f20W600SubTitleColor,
                ),
                Text(
                  'See All',
                  style: AppTextStyle.f16W400SubTitleColor,
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 210, //TODO: fixed height
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 190, //TODO: fixed height
                    width: 135, //TODO: fixed height
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          bottom: 20,
                          child: Container(
                            height: 170,
                            width: 135,
                            decoration: BoxDecoration(
                              color: AppColors.purpleColor,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 65, bottom: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Yakisoba Noodles',
                                    style: AppTextStyle.f10SubTitleW600,
                                  ),
                                  Text(
                                    '\$10.00',
                                    style: AppTextStyle.f10SubTitleW600,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 100, //TODO: fixed height
                          width: 100, //TODO: fixed height
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset(
                            fit: BoxFit.contain,
                            AppImages.astronautGift,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 4,
                                ),
                                shape: BoxShape.circle,
                                color: AppColors.yellowColor),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: SvgPicture.asset(AppImages.cart),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 12,
                  );
                },
                itemCount: 4,
              ),
            ), //gifts listview
            SizedBox(
              height: 12,
            ),
            Container(
              height: 72, //TODO: fixed height
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Lottie.asset(AppImages.roulette),
                  Text(
                    'Space Missions',
                    style: AppTextStyle.f16W400SubTitleColor,
                  ),
                  SvgPicture.asset(AppImages.chevronRightDouble)
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
