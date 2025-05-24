import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(color: Colors.grey[800]!, width: 1)
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: const Color(0xFF18171C),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/bottomNavigationBar/S.Rocks.Music Studio (2) 1.png',
              width: 24,
              height: 24,
              color: Colors.grey,
            ),
            activeIcon: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: -15,
                  right: 0,
                  left: 0,
                  child: Image.asset(
                    'assets/icons/bottomNavigationBar/Ellipse162.png',
                    width: 8,
                    height: 8,
                  ),
                ),
                Positioned(
                  child: Image.asset(
                    'assets/icons/bottomNavigationBar/S.Rocks.Music Studio (2) 1.png',
                    width: 25,
                    height: 25,
                  ),
                ),
              ],
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/bottomNavigationBar/news.png',
              width: 24,
              height: 24,
              color: Colors.grey,
            ),
            activeIcon: Image.asset(
              'assets/icons/bottomNavigationBar/news.png',
              width: 24,
              height: 24,
              color: Colors.white,
            ),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/bottomNavigationBar/Music.png',
              width: 24,
              height: 24,
              color: Colors.grey,
            ),
            activeIcon: Image.asset(
              'assets/icons/bottomNavigationBar/Music.png',
              width: 24,
              height: 24,
              color: Colors.white,
            ),
            label: 'TrackBox',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/bottomNavigationBar/Union.png',
              width: 24,
              height: 24,
              color: Colors.grey,
            ),
            activeIcon: Image.asset(
              'assets/icons/bottomNavigationBar/Union.png',
              width: 24,
              height: 24,
              color: Colors.white,
            ),
            label: 'Projects',
          ),
        ],
      ),
    );
  }
}