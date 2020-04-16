import 'package:covid_final/screens/Fun/games_screen.dart';
import 'package:covid_final/screens/Health/precautions_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import './screens/News/myth_screen.dart';
import './screens/Shopping/products_screen.dart';
import 'package:flutter/material.dart';
import './screens/Home2/home2.dart';
import './screens/Health/helpline_screen.dart';
import './screens/FAQ/faq_screen.dart';
import './screens/test centres/test_centers.dart';
import './screens/News/News.dart';
import 'package:flutter/services.dart';
import './screens/Donation/relieffund.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currindex = 0;
  List<Widget> _screens = [
    Home(),
    FaqScreen(),
    News(),
    ProductsScreen(),
    ReliefFund(),
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.blueAccent[100],
          statusBarIconBrightness: Brightness.dark),
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      title: 'COVID',
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      routes: {
        '/testcentres': (context) => TestCenters(),
        '/myths': (context) => MythScreen(),
        '/helpline': (context) => HelplineScreen(),
        '/precautions': (context) => PrecautionsScreen(),
        '/games': (context) => GamesScreen()
      },
      home: Scaffold(
        body: _screens[_currindex],
        bottomNavigationBar: Container(
          height: 53.0,
          child: BottomNavigationBar(
              selectedFontSize: 14.0,
              unselectedFontSize: 14.0,
              elevation: 3.0,
              iconSize: 24.0,
              showUnselectedLabels: false,
              backgroundColor: Colors.lightBlue[50],
              selectedItemColor: Colors.blue[900],
              currentIndex: _currindex,
              onTap: (int index) {
                setState(() {
                  _currindex = index;
                });
              },
              type: BottomNavigationBarType.shifting,
              items: [
                BottomNavigationBarItem(
                  activeIcon: Icon(MdiIcons.chartBar),
                  icon: Icon(
                    MdiIcons.chartBar,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Stats',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(MdiIcons.frequentlyAskedQuestions),
                  icon: Icon(
                    MdiIcons.frequentlyAskedQuestions,
                    color: Colors.black,
                  ),
                  title: Text(
                    'FAQs',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(MdiIcons.newspaper),
                  icon: Icon(
                    MdiIcons.newspaper,
                    color: Colors.black,
                  ),
                  title: Text(
                    'News',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.shopping_cart),
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Shop',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.monetization_on),
                  icon: Icon(
                    Icons.monetization_on,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Donate',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
