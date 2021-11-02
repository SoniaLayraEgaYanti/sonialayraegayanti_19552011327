import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:sonialayraegayanti_19552011327/pages/dashboard_page.dart';
import 'package:sonialayraegayanti_19552011327/pages/date_page.dart';
import 'package:sonialayraegayanti_19552011327/pages/time_page.dart';


class  MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);
  
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
int _selectedIndex = 0;
final PageController _pageController = PageController();

  @override
  void dispose(){
  _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
         controller: _pageController, 
         onPageChanged: (index){
           setState(() {
             _selectedIndex = index;
           });
         },
         children: [
           DashboardPage(),
           DatePage(),
           TimePage(),
         ],
        ),
      ),

    bottomNavigationBar: BottomNavyBar(
      selectedIndex: _selectedIndex,
      onItemSelected: (index){
        setState(() {
          _pageController.jumpToPage(index);
        });},

      items: [
        BottomNavyBarItem(
          icon: Icon(Icons.dashboard), 
          title: Text('Dashboard'),
          activeColor: Colors.blueAccent,
          inactiveColor: Colors.blueAccent,
      ),

       BottomNavyBarItem(
          icon: Icon(Icons.date_range), 
          title: Text('Date'),
          activeColor: Colors.redAccent,
          inactiveColor: Colors.redAccent,
      ),
      
       BottomNavyBarItem(
          icon: Icon(Icons.timer), 
          title: Text('Time'),
          activeColor: Colors.greenAccent,
          inactiveColor: Colors.greenAccent,
      ),
      ],
    ),
    );
  }
}

