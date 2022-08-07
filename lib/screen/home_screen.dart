import 'package:example3/interface/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Menu>_menu = [
    Menu(
      icon: Icon(Icons.newspaper),
      title: "ข่าวสาร",
      screen: NewsScreen(),
    ),
    Menu(
      icon: Icon(Icons.info),
      title: "เกี่ยวกับฉัน",
      screen: AboutScreen(),
    ),
    Menu(
      icon: Icon(Icons.contact_mail),
      title: "ติดต่อฉัน",
      screen: ContactScreen(),
    ),

  ];
  
   int _currentIndex =0;

   void onInddexChange(int index) {
    setState(() {
      _currentIndex = index;

    });
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),


      ),
      drawer: Drawer(),
      body: _menus[_currentIndex].screen,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onIndexChange,
        items: _menus
            .map(
              (m) => BottomNavigationBarItem(
                icon: m.icon,
                label: m.title,
              ),
            )
            .toList(),
      ),
    );
  }
}