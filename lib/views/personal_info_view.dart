import 'dart:html';

import 'package:AntonioRuggiero/custom_icons_icons.dart';
import 'package:AntonioRuggiero/views/widgets/PersonalContactListItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PersonalInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Center(
        child: Stack(
          children: <Widget>[
            Align(
                alignment: Alignment.topCenter,
                child: Column(children: [
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
                ])),
            Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Contacts",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    PersonalContactListItem(Icons.email, "email",
                        "mailto:ant.ruggiero16@gmail.com"),
                    PersonalContactListItem(
                        CustomIcons.instagram,
                        "Instagram Profile",
                        "https://www.instagram.com/antonio.ruggiero93/"),
                    PersonalContactListItem(CustomIcons.github,
                        "Github Profile", "https://github.com/BattlefieldNoob"),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
