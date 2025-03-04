import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:nova_app/core/constants/app_images.dart';
import 'package:nova_app/core/theme/app_colors.dart';
import 'package:nova_app/core/theme/app_text_style.dart';
import 'package:nova_app/features/home/autoSwappingPage/auto_swapping_page_view.dart';

import '../../core/genericWidgets/list_view_box.dart';
import '../../core/genericWidgets/weeks_offer_container.dart';

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
                    Text('Welcome',
                        style: AppTextStyle.f20W600SubTitleColor(context)),
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
              child: AutoSwappingPageView(
                children: [
                  WeeksOfferContainer(
                    title: 'Week’s Offer',
                    description: 'Free Gift From the store',
                    subTitle: 'When ordering more then 3 meals',
                    visibleDish: true,
                    mainContainer: true,
                  ),
                  WeeksOfferContainer(
                    title: 'Cosmic Deal Has Just Arrived!',
                    description: 'Activate Promo Code',
                    subDescription: ' NOVA100',
                    subTitle: 'Before This Star Fades!',
                    mainContainer: false,
                  ),
                ],
              ),
            ), //weeks offer sizedBox
            SizedBox(
              height: 10,
            ),
            Text(
              'Categories',
              style: AppTextStyle.f20W600SubTitleColor(context),
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
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
                  style: AppTextStyle.f20W600SubTitleColor(context),
                ),
                Text(
                  'See All',
                  style: AppTextStyle.f16W400SubTitleColor(context),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            ListViewBox(
              image: AppImages.plate2,
              title: 'Yakisoba Noodles',
              price: '10.00',
              description: 'Noodle with beef',
              visibleDescription: true,
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.18,
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Do you want to prepare your\n meal with the nutritional\n values you need?',
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyle.f10SubTitleW600(context),
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
                                    style: AppTextStyle.f16w500PrimaryColor(
                                        context),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    AppImages.customMeal,
                    width: MediaQuery.of(context).size.width * 0.38,
                  ),
                ],
              ),
            ), //Lets go SizedBox
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Galaxy Store',
                  style: AppTextStyle.f20W600SubTitleColor(context),
                ),
                Text(
                  'See All',
                  style: AppTextStyle.f16W400SubTitleColor(context),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            ListViewBox(
              image: AppImages.astronautGift,
              title: 'Astronaut Figure',
              price: '29.99',
              visibleDescription: false,
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.09,
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
                    style: AppTextStyle.f16W400SubTitleColor(context),
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
