import 'package:ecommerce/Widgets/app_bar_bg_color.dart';
import 'package:flutter/material.dart';

import '../../../Widgets/custom_container.dart';

class CustomerHomePage extends StatelessWidget {
  const CustomerHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          flexibleSpace: const AppBarBgColor(),
          title: const CustomContainer(),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.yellow,
            indicatorWeight: 4,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                child: Text("Man"),
              ),
              Tab(
                child: Text("Woman"),
              ),
              Tab(
                child: Text("Shoes"),
              ),
              Tab(
                child: Text("Electronics"),
              ),
              Tab(
                child: Text("Bags"),
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Center(
            child: Text("Man Page"),
          ),
          Center(
            child: Text("Woman Page"),
          ),
          Center(
            child: Text("Shoes Page"),
          ),
          Center(
            child: Text("Electronics Page"),
          ),
          Center(
            child: Text("Bags Page"),
          ),
        ]),
      ),
    );
  }
}
