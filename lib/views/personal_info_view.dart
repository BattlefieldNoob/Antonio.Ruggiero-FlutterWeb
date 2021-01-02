import 'dart:html';

import 'package:AntonioRuggiero/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonalInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(children: [
              Text(
                "Antonio Ruggiero",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Hello! I'm Antonio Ruggiero, i came from Italy and actually i'm a XR developer @ Uqido, Padova",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "This Website serve as personal portfolio, feel free to explore it or look at source code on github",
                style: TextStyle(fontSize: 18),
              ),
            ]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Contacts",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 16,
                  ),
                  title: Text("Email"),
                  onTap: () => launch("mailto:ant.ruggiero16@gmail.com"),
                ),
                const SizedBox(
                  height: 4,
                ),
                ListTile(
                  leading: Icon(
                    CustomIcons.instagram,
                    size: 16,
                  ),
                  title: Text("Instagram Profile"),
                  onTap: () =>
                      launch("https://www.instagram.com/antonio.ruggiero93/"),
                ),
                const SizedBox(
                  height: 4,
                ),
                ListTile(
                  leading: Icon(
                    CustomIcons.github,
                    size: 16,
                  ),
                  title: Text("Github Profile"),
                  onTap: () => launch("https://github.com/BattlefieldNoob"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
