import 'package:flutter/material.dart';
import 'package:pet_adaption_app/screens/groom.dart';
import 'package:pet_adaption_app/screens/home.dart';
import 'package:pet_adaption_app/screens/veterinary.dart';
import 'package:pet_adaption_app/widgets/bars/bottom-nav-bar.dart';

class MainRoute extends StatefulWidget {
  const MainRoute({super.key});

  @override
  State<StatefulWidget> createState() => _MainRouteState();
}

class _MainRouteState extends State<MainRoute> {
  // variables initialization
  int _currentNavBarIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const GroomScreen(),
    const VetScreen(),
  ];

  // onTapItem function
  void _onTapItem(int newIndex) {
    setState(() {
      _currentNavBarIndex = newIndex;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // current nav screen
      body: _screens[_currentNavBarIndex],

      // bottom nav bar
      bottomNavigationBar: BottomNavBar(
        onTapItem: _onTapItem,
        currentNavBarIndex: _currentNavBarIndex,
      ),
    );
  }
}
