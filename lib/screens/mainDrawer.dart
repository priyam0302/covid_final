import 'package:covid_final/screens/Fun/games_screen.dart';
import 'package:covid_final/screens/Health/precautions_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'Health/helpline_screen.dart';
import 'News/myth_screen.dart';
import 'package:flutter/material.dart';
import 'package:covid_final/screens/test centres/test_centers.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tabHandler) {
    return InkWell(
      // splashColor: Colors.red,
      child: Container(
        height: 47,
        child: ListTile(
          leading: Icon(
            icon,
            size: 26,
          ),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: tabHandler,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
      child: Drawer(
        elevation: 15.0,
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.blueAccent[50],
              child: Column(
                children: <Widget>[
                  Container(
                    height: 130,
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        Colors.blue[100],
                        Colors.blue[200],
                        Colors.blue[300],
                        Colors.blue[400]
                      ],
                    )),
                    child: Text(
                      'CoronaVirus\n    Tracker',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  buildListTile('Myth Busters', MdiIcons.bookInformationVariant,
                      () {
                    Navigator.of(context)
                        .pushReplacementNamed(MythScreen.routeName);
                  }),
                  Divider(
                    thickness: 1,
                  ),
                  buildListTile('HelpLine', MdiIcons.phoneInTalk, () {
                    Navigator.of(context)
                        .pushReplacementNamed(HelplineScreen.routeName);
                  }),
                  Divider(
                    thickness: 1,
                  ),
                  buildListTile('Test Centres', MdiIcons.ambulance, () {
                    Navigator.of(context)
                        .pushReplacementNamed(TestCenters.routeName);
                  }),
                  Divider(
                    thickness: 1,
                  ),
                  buildListTile('Precautions', MdiIcons.plusBox, () {
                    Navigator.of(context)
                        .pushReplacementNamed(PrecautionsScreen.routeName);
                  }),
                  Divider(
                    thickness: 1,
                  ),
                  buildListTile('Fun', MdiIcons.gamepadVariant, () {
                    Navigator.of(context)
                        .pushReplacementNamed(GamesScreen.routeName);
                  }),
                  Divider(
                    thickness: 1,
                  ),
                  buildListTile('About', MdiIcons.information, () {}),
                  Divider(
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
