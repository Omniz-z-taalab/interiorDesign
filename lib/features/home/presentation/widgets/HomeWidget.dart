import 'package:design_flutter1/features/home/presentation/widgets/DesignOfChildrensRooms.dart';
import 'package:design_flutter1/features/home/presentation/widgets/LivingRoomDesign.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,

        child: Column(
          children: [

             TabBar(
              // controller: _tabController,
              labelColor: Colors.white,
               unselectedLabelColor: Colors.black45, //<-- Unselected text color
               isScrollable: true,
               indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.yellow.shade600,
              ),
              labelStyle: TextStyle(
                color: Colors.black26,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              tabs: [
                Tab(text: 'Design of children\'s rooms'),
                Tab(
                  text: 'Living room design',
                ),
                Tab(
                  text: 'Living room design',
                ),
              ],
            ),

             Expanded(
              child: TabBarView(
                children: [
                  DesignOfChildrensRooms(),
                  LivingRoomDesign(),
                  LivingRoomDesign(),
                ],
              ),
            ),
          ],
        ),

    );
  }
}
