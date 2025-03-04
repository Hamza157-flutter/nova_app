import 'package:flutter/material.dart';
import 'dart:async'; // For Timer

class AutoSwappingPageView extends StatefulWidget {
  final List<Widget> children; // List of widgets to swap between
  final Duration swapDuration; // Duration between swaps
  final Curve curve; // Animation curve

  const AutoSwappingPageView({
    super.key,
    required this.children,
    this.swapDuration = const Duration(seconds: 10),
    this.curve = Curves.easeInOut,
  });

  @override
  AutoSwappingPageViewState createState() => AutoSwappingPageViewState();
}

class AutoSwappingPageViewState extends State<AutoSwappingPageView> {
  final PageController _pageController =
      PageController(); // Controller for PageView
  Timer? _timer; // Timer for automatic swapping

  @override
  void initState() {
    super.initState();
    _startTimer(); // Start the timer when the widget is initialized
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer
    _pageController.dispose(); // Dispose the PageController
    super.dispose();
  }

  void _startTimer() {
    // Create a timer that triggers every `swapDuration`
    _timer = Timer.periodic(widget.swapDuration, (timer) {
      // Switch to the next page
      if (_pageController.page == 0) {
        _pageController.animateToPage(
          1,
          duration: Duration(milliseconds: 500),
          curve: widget.curve,
        );
      } else {
        _pageController.animateToPage(
          0,
          duration: Duration(milliseconds: 500),
          curve: widget.curve,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController, // Assign the PageController
      children: widget.children, // Use the provided children
    );
  }
}
