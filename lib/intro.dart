import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:practice3/login.dart';

void main() => runApp(const PageViewExampleApp());

class PageViewExampleApp extends StatelessWidget {
  const PageViewExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('PageView Sample')),
        body: const PageViewExample(),
      ),
    );
  }
}

class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample>
    with TickerProviderStateMixin {
  late PageController _pageViewController;
  late TabController _tabController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        PageView(
          controller: _pageViewController,
          onPageChanged: _handlePageViewChanged,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 250,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Image.asset('assets/boss.png'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Ready to Travel',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      "it's so protected that even our team has no any assess to your payment data",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[400]),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 250,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Image.asset('assets/boss.png'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Ready to Travel',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      "it's so protected that even our team has no any assess to your payment data",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[400]),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 250,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Image.asset('assets/boss.png'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Ready to Travel',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      "it's so protected that even our team has no any assess to your payment data",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[400]),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        PageIndicator(
          tabController: _tabController,
          currentPageIndex: _currentPageIndex,
          onUpdateCurrentPageIndex: _updateCurrentPageIndex,
          isOnDesktopAndWeb: _isOnDesktopAndWeb,
        ),
      ],
    );
  }

  void _handlePageViewChanged(int currentPageIndex) {
    if (!_isOnDesktopAndWeb) {
      return;
    }
    _tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  void _updateCurrentPageIndex(int index) {
    _tabController.index = index;
    _pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  bool get _isOnDesktopAndWeb {
    if (kIsWeb) {
      return true;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.macOS:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return true;
      case TargetPlatform.android:
      case TargetPlatform.iOS:
      case TargetPlatform.fuchsia:
        return false;
    }
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.tabController,
    required this.currentPageIndex,
    required this.onUpdateCurrentPageIndex,
    required this.isOnDesktopAndWeb,
  });

  final int currentPageIndex;
  final TabController tabController;
  final void Function(int) onUpdateCurrentPageIndex;
  final bool isOnDesktopAndWeb;

  @override
  Widget build(BuildContext context) {
    if (!isOnDesktopAndWeb) {
      return const SizedBox.shrink();
    }
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          TabPageSelector(
            controller: tabController,
            color: colorScheme.surface,
            selectedColor: colorScheme.primary,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: double.infinity,
            margin: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                if (currentPageIndex == 2) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                }
                onUpdateCurrentPageIndex(currentPageIndex + 1);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              child: const Text('Next'),
            ),
          )
        ],
      ),
    );
  }
}
