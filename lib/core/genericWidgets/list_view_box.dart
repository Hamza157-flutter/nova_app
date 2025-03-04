import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/app_images.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';

class ListViewBox extends StatelessWidget {
  const ListViewBox(
      {super.key,
      required this.image,
      required this.title,
      this.description,
      required this.price,
      required this.visibleDescription});

  final bool visibleDescription;
  final String image;
  final String title;
  final String? description;
  final String price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.257,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.37,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  bottom: 20,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.37,
                    decoration: BoxDecoration(
                      color: AppColors.purpleColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 65, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            title,
                            style: AppTextStyle.f10SubTitleW600(context),
                          ),
                          if (visibleDescription)
                            Text(
                              description ?? '',
                              style: AppTextStyle.f10SubTitleW600(context)
                                  .copyWith(
                                      color: AppColors.yellowColor,
                                      fontSize: 8),
                            ),
                          Text(
                            '\$ $price',
                            style: AppTextStyle.f10SubTitleW600(context),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  image,
                  height: MediaQuery.of(context).size.height * 0.11,
                  width: MediaQuery.of(context).size.width * 0.24,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.15,
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
    );
  }
}
