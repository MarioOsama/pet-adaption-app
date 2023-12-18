import 'package:flutter/material.dart';
import 'package:pet_adaption_app/main.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar(
      {super.key, required this.onTapItem, required this.currentNavBarIndex});

  final void Function(int newIndex) onTapItem;
  final int currentNavBarIndex;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      // rounded top radius
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30.0)),
      child: Container(
        height: 80.0,
        decoration: const BoxDecoration(
          color: backgroundColor,
        ),
        // bottom nav bar
        child: BottomNavigationBar(
          backgroundColor: backgroundColor,
          unselectedItemColor: const Color.fromARGB(255, 44, 50, 50),
          selectedItemColor: foregroundColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentNavBarIndex,
          onTap: (int newIndex) {
            onTapItem(newIndex);
          },
          items: const [
            // home
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
              ),
            ),
            // grooming
            BottomNavigationBarItem(
              label: 'Grooming',
              icon: Icon(Icons.content_cut_outlined),
            ),
            // veterinary
            BottomNavigationBarItem(
              label: 'Veterinary',
              icon: Icon(Icons.health_and_safety_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
