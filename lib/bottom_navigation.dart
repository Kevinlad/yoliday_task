import 'package:flutter/material.dart';
import 'package:yoliday_task/portfloia_screen.dart';

class Bottomnavigation extends StatefulWidget {
  @override
  _BottomnavigationState createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _getBody() {
    switch (_selectedIndex) {
      case 0:
        return const Center(child: Text("Empty Scaffold")); // Placeholder
      case 1:
        return PortfolioScreen();
      case 2:
      case 3:
        return const Center(child: Text("Empty Scaffold")); // Placeholder
      default:
        return Container();
    }
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      unselectedLabelStyle: TextStyle(color: Colors.black),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work_outline),
          label: 'Portfolio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.input),
          label: 'Input',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
    );
  }
}
