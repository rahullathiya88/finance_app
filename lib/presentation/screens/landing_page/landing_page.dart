import 'package:finance_app/presentation/screens/landing_page/home_screen.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.indigo.shade50,
        selectedItemColor: Colors.indigo.shade400,
        selectedFontSize: 0,
        currentIndex: selectedIndex,
        unselectedFontSize: 0,
        onTap: (p0) {
          setState(() {
            selectedIndex = p0;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            activeIcon: Icon(Icons.home, color: Colors.indigo.shade400),
            icon: const Icon(Icons.home, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: '',
            activeIcon: Icon(Icons.payment, color: Colors.indigo.shade400),
            icon: const Icon(Icons.payment, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: '',
            activeIcon: Icon(Icons.add, color: Colors.indigo.shade400),
            icon: const Icon(Icons.add, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: '',
            activeIcon: Icon(Icons.attach_money_outlined,
                color: Colors.indigo.shade400),
            icon: const Icon(Icons.attach_money_outlined, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: '',
            activeIcon:
                Icon(Icons.add_chart_outlined, color: Colors.indigo.shade400),
            icon: const Icon(Icons.add_chart_outlined, color: Colors.black),
          ),
        ],
      ),
      body: IndexedStack(index: selectedIndex, children: [
        Container(),
        Container(),
        HomeScreen(),
        Container(),
        Container(),
      ]),
    );
  }
}
