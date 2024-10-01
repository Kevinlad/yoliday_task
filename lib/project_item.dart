import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectItem extends StatelessWidget {
  final String title;
  final String imagePath;

  const ProjectItem({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h), // Responsive padding
      child: SizedBox(
        width: 343.w, // Responsive width
        height: 110.h, // Responsive height
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r), // Responsive border radius
          ),
          child: Row(
            children: [
              Container(
                width: 110.w, // Responsive width for image
                height: double.infinity, // Full height of the tile
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.r),
                    bottomLeft: Radius.circular(15.r),
                  ),
                  image: DecorationImage(
                    image: AssetImage(imagePath), // Load image from assets
                    fit: BoxFit.cover, // Cover to fill the container
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w), // Responsive padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontFamily: 'Roboto-Black',
                          fontSize: 14.sp, // Responsive font size
                        ),
                      ),
                      SizedBox(height: 4.h), // Responsive spacing
                      Text(
                        'BAHASA SUNDA\nOleh Al-Baiqi Samaan',
                        style: TextStyle(
                          fontSize: 10.sp, // Responsive font size
                          fontFamily: 'Roboto-Light',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0.w), // Responsive padding
                child: Container(
                  width: 50.w, // Responsive width
                  height: 26.h, // Responsive height
                  padding: EdgeInsets.all(4.w), // Responsive inner padding
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r), // Responsive border radius
                    gradient: const LinearGradient(
                      colors: [Color(0xFFF39519), Color(0xFFFFCD67)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'A',
                      style: TextStyle(
                        fontSize: 14.sp, // Responsive font size
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
