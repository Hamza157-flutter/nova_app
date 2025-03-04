import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nova_app/core/constants/app_images.dart';
import 'package:nova_app/core/theme/app_background.dart';
import 'package:nova_app/core/theme/app_colors.dart';
import '../cart/cart_screen.dart';
import '../home/home_screen.dart';
import '../profile/profile_screen.dart';
import '../search/search_screen.dart';

class BottomNavigatorBarScreen extends StatefulWidget {
  const BottomNavigatorBarScreen({super.key});

  @override
  State<BottomNavigatorBarScreen> createState() =>
      _BottomNavigatorBarScreenState();
}

class _BottomNavigatorBarScreenState extends State<BottomNavigatorBarScreen> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 24, left: 24, top: 24),
          child: PageView(
            controller: _pageController,
            physics: const BouncingScrollPhysics(),
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            children: const [
              HomeScreen(),
              SearchScreen(),
              CartScreen(),
              ProfileScreen(),
            ],
          ),
        ),
        bottomNavigationBar: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0, right: 12, left: 12),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.subTitleColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    _buildNavItem(0, AppImages.home, 'Home'),
                    _buildNavItem(1, AppImages.search, 'Search'),
                    _buildNavItem(2, AppImages.cart, 'Cart'),
                    _buildNavItem(3, AppImages.user, 'Profile'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, String iconPath, String label) {
    final bool isSelected = _selectedIndex == index;
    return Expanded(
      child: GestureDetector(
        onTap: () => _onItemTapped(index),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isSelected ? AppColors.yellowColor : Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconPath,
                colorFilter: ColorFilter.mode(
                  isSelected ? Colors.black : Colors.white,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  color: isSelected ? Colors.black : Colors.white,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
