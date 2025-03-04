import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nova_app/core/constants/app_images.dart';
import 'package:nova_app/core/theme/app_background.dart';
import 'package:nova_app/core/theme/app_colors.dart';
import 'package:nova_app/core/theme/app_text_style.dart';

class MealsDetailsScreen extends StatelessWidget {
  const MealsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(AppImages.chevronLeft),
                    Text(
                      'Meal’s Details',
                      style: AppTextStyle.f32w700White(context)
                          .copyWith(fontSize: 24),
                    ),
                    SvgPicture.asset(AppImages.heart),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Center(
                  child: Image.asset(
                    AppImages.plate5,
                    height: 280,
                    width: 280,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Planet Taste',
                      style: AppTextStyle.f20W600SubTitleColor(context),
                    ),
                    Container(
                      height: 28,
                      width: 96,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: AppColors.subTitleColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.add,
                            size: 24,
                          ),
                          Text(
                            '1',
                            style: AppTextStyle.f20W200PrimaryColor(context),
                          ),
                          Icon(
                            Icons.remove,
                            size: 24,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: double.infinity,
                  height: 64,
                  decoration: BoxDecoration(
                      color: AppColors.purpleColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InfoRow(text: '4.5', image: AppImages.star),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: VerticalDivider(),
                        ),
                        InfoRow(text: 'Free', image: AppImages.clock),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: VerticalDivider(),
                        ),
                        InfoRow(text: '20 min', image: AppImages.truck),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: double.infinity,
                  height: 64,
                  decoration: BoxDecoration(
                    color: AppColors.purpleColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Pasta, shrimp, parsley, onion, cheese',
                      style: AppTextStyle.f10SubTitleW600(context)
                          .copyWith(fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DetailsContainer(num: '450', type: 'Calories'),
                    DetailsContainer(num: '60G', type: 'Fats'),
                    DetailsContainer(num: '18G', type: 'Protein'),
                    DetailsContainer(num: '66G', type: 'Carbs'),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Anything else we need to know ?',
                  style:
                      AppTextStyle.f16w600White(context).copyWith(fontSize: 14),
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 45,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.purpleColor,
                      hintText: 'Note....',
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.8)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.subTitleColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '\$ 40.99',
                          style: AppTextStyle.f16w600White(context)
                              .copyWith(color: Colors.black),
                        ),
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(48),
                              color: AppColors.yellowColor),
                          child: Center(
                            child: Text(
                              'Add to cart',
                              style: AppTextStyle.f16w600White(context)
                                  .copyWith(color: Colors.black, fontSize: 14),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.text,
    required this.image,
  });

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          image,
          height: 15,
          width: 15,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: AppTextStyle.f16w600White(context),
        ),
      ],
    );
  }
}

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({super.key, required this.num, required this.type});

  final String num;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: AppColors.purpleColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              num,
              style: AppTextStyle.f16w200SubTitleColor(context)
                  .copyWith(fontSize: 14),
            ),
            Text(
              type,
              style: AppTextStyle.f16w200SubTitleColor(context)
                  .copyWith(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
