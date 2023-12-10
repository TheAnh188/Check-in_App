import 'package:check_in_app/Home.dart';
import 'package:check_in_app/animation/fade_animation.dart';
import 'package:check_in_app/check_in.dart';
import 'package:check_in_app/notification.dart';
import 'package:check_in_app/history.dart';
import 'package:check_in_app/account.dart';
// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class Combination extends StatefulWidget {
  static bool check = true;
  static bool brightness = true;
  static int forwardIndex = 0;

  const Combination({super.key});

  @override
  State<Combination> createState() => _CombinationState();
}

class _CombinationState extends State<Combination> {
  final _pages = [
    const Home(),
    const History(),
    const CheckIn(),
    const Notificationn(),
    const Account(),
  ];
  late int _backwardIndex = 0;
  late PageController _pageController;
  late int value = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: Combination.forwardIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FadeAnimation(
        0,
        true,
        Container(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: Combination.brightness ? 20 : 0),
              ],
            ),
            child: BottomNavigationBar(
              backgroundColor:
                  Combination.brightness ? Colors.white : Colors.grey.shade800,
              onTap: (value) => setState(() {
                _pageController.jumpToPage(value);
              }),
              currentIndex:
                  Combination.check ? Combination.forwardIndex : _backwardIndex,
              selectedItemColor: const Color.fromARGB(255, 76, 188, 80),
              unselectedItemColor: Combination.brightness
                  ? Colors.grey.shade600
                  : Colors.grey.shade500,
              type: BottomNavigationBarType.fixed,
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Trang chủ',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.article_rounded),
                  label: 'Nhóm lớp',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                            stops: [0.3, 1],
                            colors: [Colors.lightGreen, Colors.green])),
                    child: const Icon(
                      Icons.qr_code_scanner,
                      color: Colors.white,
                    ),
                    // decoration: const BoxDecoration(
                    //     image: DecorationImage(
                    //         image: AssetImage('assets/images/QR.jpg'))),
                  ),
                  label: 'Điểm danh',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'Thông báo',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.location_history),
                  label: 'Tài khoản',
                ),
              ],
            )),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) => setState(() {
          if (Combination.forwardIndex < value) {
            Combination.forwardIndex = value;
            Combination.check = true;
            _backwardIndex = value;
          } else {
            _backwardIndex = value;
            Combination.check = false;
            Combination.forwardIndex = value;
          }
        }),
        scrollDirection: Axis.horizontal,
        children: [
          FadeAnimation(
              1,
              Combination.check,
              _pages[Combination.check
                  ? Combination.forwardIndex
                  : _backwardIndex]),
          FadeAnimation(
              1,
              Combination.check,
              _pages[Combination.check
                  ? Combination.forwardIndex
                  : _backwardIndex]),
          FadeAnimation(
              1,
              Combination.check,
              _pages[Combination.check
                  ? Combination.forwardIndex
                  : _backwardIndex]),
          FadeAnimation(
              1,
              Combination.check,
              _pages[Combination.check
                  ? Combination.forwardIndex
                  : _backwardIndex]),
          FadeAnimation(
              1,
              Combination.check,
              _pages[Combination.check
                  ? Combination.forwardIndex
                  : _backwardIndex]),
          // FadeAnimation(1, _check, _pages[_currentIndex]),
          // FadeAnimation(1, _check, _pages[_currentIndex]),
          // FadeAnimation(1, _check, _pages[_currentIndex]),
          // FadeAnimation(1, _check, _pages[_currentIndex]),
          // FadeAnimation(1, _check, _pages[_currentIndex]),
        ],
      ),
      // body: _pages[_currentIndex],
      // bottomNavigationBar: ConvexAppBar(
      //     activeColor: const Color.fromARGB(255, 76, 188, 80),
      //     backgroundColor: Colors.transparent,
      //     initialActiveIndex: _currentIndex,
      //     color: Colors.black.withOpacity(0.55),
      //     elevation: 10,
      //     shadowColor: Colors.grey,
      //     onTap: (index) => setState(() {
      //           _currentIndex = index;
      //         }),
      //     items: [
      //       TabItem(
      //           icon: Icon(
      //             Icons.home,
      //             color: Colors.black.withOpacity(0.55),
      //           ),
      //           title: 'Trang chủ'),
      //       TabItem(
      //           icon: Icon(
      //             Icons.article_rounded,
      //             color: Colors.black.withOpacity(0.55),
      //           ),
      //           title: 'Lịch sử'),
      //       TabItem(
      //           icon: Icon(
      //             Icons.qr_code_scanner,
      //             color: Colors.black.withOpacity(0.55),
      //           ),
      //           title: 'Điểm danh'),
      //       TabItem(
      //           icon: Icon(
      //             Icons.notifications,
      //             color: Colors.black.withOpacity(0.55),
      //           ),
      //           title: 'Thông báo'),
      //       TabItem(
      //           icon: Icon(
      //             Icons.location_history,
      //             color: Colors.black.withOpacity(0.55),
      //           ),
      //           title: 'Tài khoản'),
      //     ]),
    );
  }
}
