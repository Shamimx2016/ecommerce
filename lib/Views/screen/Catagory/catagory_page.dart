import 'package:ecommerce/Widgets/app_bar_bg_color.dart';
import 'package:ecommerce/Widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatagoryPage extends StatelessWidget {
  const CatagoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        flexibleSpace: const AppBarBgColor(),
        title: const CustomContainer(),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SlidNavigator(),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CatagoryHome(),
          ),
        ],
      ),
    );
  }

  SlidNavigator() {
    return Container(
      height: 600.h,
      width: 80.w,
      color: Colors.grey.shade300,
    );
  }

  CatagoryHome() {
    return Container(
      height: 600.h,
      width: 80.w,
      color: Colors.grey.shade300,
    );
  }
}
