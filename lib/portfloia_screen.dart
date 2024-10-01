import 'package:flutter/material.dart';

import 'package:yoliday_task/project_page.dart';

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Portfolio'),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_bag_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications_none),
              onPressed: () {},
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Projects'),
              Tab(text: 'Saved'),
              Tab(text: 'Shared'),
              Tab(text: 'Achievement'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ProjectPage(),
            const Center(child: Text("Saved Page")),
            const Center(child: Text("Shared Page")),
            const Center(child: Text("Achievement Page")),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
           
          },
          backgroundColor: const Color(0XFFDF5532),
          icon: const Icon(
            Icons.filter_list,
            color: Colors.white,
          ),
          label: const Text(
            "Filter",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
