import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:yoliday_task/project_page.dart';

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Portfolio',
            style: TextStyle(fontSize: 20.sp), // Responsive font size
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_bag_outlined),
              onPressed: () {},
              iconSize: 24.w, // Responsive icon size
            ),
            IconButton(
              icon: const Icon(Icons.notifications_none),
              onPressed: () {},
              iconSize: 24.w, // Responsive icon size
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'Projects', height: 50.h), // Responsive height for tabs
              Tab(text: 'Saved', height: 50.h),
              Tab(text: 'Shared', height: 50.h),
              Tab(text: 'Achievement', height: 50.h),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ProjectPage(),
            Center(
              child: Text(
                "Saved Page",
                style: TextStyle(fontSize: 18.sp), // Responsive font size
              ),
            ),
            Center(
              child: Text(
                "Shared Page",
                style: TextStyle(fontSize: 18.sp),
              ),
            ),
            Center(
              child: Text(
                "Achievement Page",
                style: TextStyle(fontSize: 18.sp),
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: const Color(0XFFDF5532),
          icon: Icon(
            Icons.filter_list,
            color: Colors.white,
            size: 24.sp, // Responsive icon size
          ),
          label: Text(
            "Filter",
            style: TextStyle(color: Colors.white, fontSize: 16.sp), // Responsive font size
          ),
        ),
      ),
    );
  }
}
