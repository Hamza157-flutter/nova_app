import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:nova_app/core/constants/app_images.dart';
import 'package:nova_app/core/theme/app_colors.dart';
import 'package:nova_app/core/theme/app_text_style.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Center(
            child: Text(
              'Search',
              style: AppTextStyle.f20w300White(context),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            children: [
              Expanded(
                flex: 6,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: AppColors.subTitleColor,
                    prefixIcon: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SvgPicture.asset(
                          AppImages.search,
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                    suffixIcon: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: SvgPicture.asset(
                          AppImages.cross,
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                    filled: true,
                    hintText: 'Search',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.subTitleColor),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(AppImages.alignCenter),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Burger',
                      style: AppTextStyle.f16w200SubTitleColor(context),
                    ),
                  )),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10,
                );
              },
              itemCount: 9,
            ),
          ),
          Expanded(child: Lottie.asset(AppImages.astronaut)),
        ],
      ),
    );
  }
}
