import 'package:flutter/material.dart';
import 'package:nova_app/core/genericWidgets/general_button.dart';
import 'package:nova_app/core/theme/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/constants/app_images.dart';
import '../../core/genericWidgets/on_boarding_generic.dart';
import '../../core/theme/app_background.dart';
import '../bottomNavigatorBar/bottom_navigator_bar_screen.dart';

class OnBoardingScreens extends StatefulWidget {
  const OnBoardingScreens({super.key});

  @override
  OnBoardingScreensState createState() => OnBoardingScreensState();
}

class OnBoardingScreensState extends State<OnBoardingScreens> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Widget> _pages = [
    const OnBoarding1(),
    const OnBoarding2(),
    const OnBoarding3(),
  ];

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Stack(
            children: [
              // PageView for onboarding screens
              PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: _pages,
              ),

              // Smooth Page Indicator at the bottom
              Positioned(
                bottom: 100,
                left: 0,
                right: 0,
                child: Center(
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: _pages.length,
                    effect: WormEffect(
                      activeDotColor: AppColors.yellowColor,
                      dotColor: AppColors.subTitleColor,
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Center(
                  child: GeneralButton(
                    text: _currentPage == _pages.length - 1
                        ? 'Get Started'
                        : 'Next',
                    onPressed: () {
                      if (_currentPage < _pages.length - 1) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const BottomNavigatorBarScreen(),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingGeneric(
      title: 'Creativity Space Station',
      description:
          'Welcome to the space creativity glimpse where you control your meal between the planets',
      lottie: AppImages.plate,
    );
  }
}

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingGeneric(
      title: 'Creativity Space Station',
      description:
          'Here begins your space adventures. Participate in weekly challenges to earn points that raise your ranking and unlock hidden abilities.',
      lottie: AppImages.roulette,
    );
  }
}

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingGeneric(
      title: 'Galaxy Store',
      description: 'Discover pieces of the unknown',
      lottie: AppImages.store,
    );
  }
}
