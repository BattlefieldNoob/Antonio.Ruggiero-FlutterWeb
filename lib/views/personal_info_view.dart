
import 'package:antonio_ruggiero_website/custom_icons_icons.dart';
import 'package:antonio_ruggiero_website/views/widgets/personal_contact_list_item.dart';
import 'package:flutter/material.dart';

class PersonalInfoView extends StatelessWidget {
  const PersonalInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: const Center(
        child: Stack(
          children: <Widget>[
            Align(
                alignment: Alignment.topCenter,
                child: Column(children: [
                  Text(
                    "Antonio Ruggiero",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Hello! I'm Antonio Ruggiero, i came from Italy and actually i'm a XR developer @ Uqido, Padova",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
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
