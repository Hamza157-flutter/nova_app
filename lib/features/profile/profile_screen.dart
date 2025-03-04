import 'package:flutter/material.dart';
import '../../core/constants/app_images.dart';
import '../../core/genericWidgets/profile_box.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundColor: AppColors.secondGradientColor,
                  ),
                  Text(
                    'User',
                    style: AppTextStyle.f32w700White(context),
                  ),
                  Text(
                    '+963582246475', //TODO: change to user number
                    style: AppTextStyle.f20w300White(context)
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Column(
              children: [
                ProfileBoxes(
                  onPressed1: () {},
                  onPressed2: () {},
                  onPressed3: () {},
                  onPressed4: () {},
                  text1: 'personalInfo',
                  text2: 'addresses',
                  text3: 'language',
                  text4: 'favorite',
                  svg1: AppImages.profile,
                  svg2: AppImages.map,
                  svg3: AppImages.language,
                  svg4: AppImages.heartProfile,
                ),
                SizedBox(
                  height: 16,
                ),
                ProfileBoxes(
                  visible3: false,
                  visible4: false,
                  onPressed1: () {},
                  onPressed2: () {},
                  text1: 'monthlySubscription',
                  text2: 'paymentMethod',
                  svg1: AppImages.calender,
                  svg2: AppImages.wallet,
                ),
                SizedBox(
                  height: 16,
                ),
                ProfileBoxes(
                  onPressed1: () {},
                  onPressed2: () {},
                  onPressed3: () {},
                  text1: 'helpCenter',
                  text2: 'termsPolices',
                  text3: 'aboutTheApp',
                  svg1: AppImages.iconDisc,
                  svg2: AppImages.infoCircle,
                  svg3: AppImages.iconBook,
                  visible4: false,
                ),
                SizedBox(
                  height: 16,
                ),
                ProfileBoxes(
                  onPressed1: () {},
                  text1: 'logout',
                  svg1: AppImages.logout,
                  visible2: false,
                  visible3: false,
                  visible4: false,
                ),
                SizedBox(height: 24),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
