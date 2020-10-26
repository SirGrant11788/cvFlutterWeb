import 'package:adityagurjar/config/assets.dart';
import 'package:adityagurjar/tabs/about_tab.dart';
import 'package:adityagurjar/tabs/blog_tab.dart';
import 'package:adityagurjar/tabs/me_tab.dart';
import 'package:adityagurjar/tabs/projects_tab.dart';
import 'package:adityagurjar/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    AboutTab(),
    MeTab(),
    BlogTab(),
    ProjectsTab(),
  ];

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: ThemeSwitcher.of(context).isDarkModeOn?Image.asset(Assets.sun,height: 20,width: 20,):Image.asset(Assets.moon,height: 20,width: 20,),
              onPressed: ()=> ThemeSwitcher.of(context).switchDarkMode(),
            )
          ],
        ),
        body: Center(
          child: tabWidgets.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.grey,
             icon: Image.asset(Assets.home,height: 20,width: 20,),
              title: Text('Home', style: new TextStyle(
                  color: const Color(0xFF06244e)))
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon: Image.asset(Assets.about,height: 20,width: 20,),
              title: Text('About', style: new TextStyle(
                  color: const Color(0xFF06244e)))
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon: Image.asset(Assets.blog,height: 20,width: 20,),
              title: Text('Blog', style: new TextStyle(
                  color: const Color(0xFF06244e)))
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon: Image.asset(Assets.stack,height: 20,width: 20,),
              title: Text('Projects', style: new TextStyle(
                  color: const Color(0xFF06244e)))
            )
          ],
          currentIndex: _selectedIndex,
          onTap: (index)=> setState(() => _selectedIndex = index),
          selectedItemColor: Theme.of(context).accentColor,
        ),
    );
  }

}
