import 'package:AntonioRuggiero/custom_icons_icons.dart';
import 'package:AntonioRuggiero/views/github_view.dart';
import 'package:AntonioRuggiero/views/instagram_view.dart';
import 'package:AntonioRuggiero/views/personal_info_view.dart';
import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final _allDestinations = [
    AdaptiveScaffoldDestination(title: 'About Me', icon: Icons.person),
    AdaptiveScaffoldDestination(
        title: 'Instagram', icon: CustomIcons.instagram),
    AdaptiveScaffoldDestination(title: 'Github', icon: CustomIcons.github)
  ];

  final pages = [PersonalInfoView(), InstagramView(), GitHubView()];

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return AdaptiveNavigationScaffold(
      drawerHeader: _getHeader(),
      appBar: AdaptiveAppBar(
        title: Text('Antonio Ruggiero'),
        actions: [
          IconTheme(
              data: Theme.of(context).iconTheme,
              child: IconButton(
                  icon: Icon(
                    CustomIcons.coffee_1,
                    semanticLabel: "Buy me a coffee",
                  ),
                  onPressed: () {
                    launch("https://www.paypal.me/Ruggiero26/0.50");
                  })),
          const SizedBox(
            width: 16,
          ),
          IconTheme(
              data: Theme.of(context).iconTheme,
              child: IconButton(
                  icon: Icon(CustomIcons.day_and_night),
                  onPressed: () {
                    AdaptiveTheme.of(context).toggleThemeMode();
                  })),
          const SizedBox(
            width: 16,
          ),
          InkWell(
            child: Image.asset("assets/github-corner-right.png"),
            onTap: () => launch(
                "https://github.com/BattlefieldNoob/Antonio.Ruggiero-FlutterWeb"),
          )
        ],
      ),
      selectedIndex: selected,
      body: _getBody(),
      destinations: _allDestinations,
      onDestinationSelected: (value) => setState(() {
        selected = value;
      }),
    );
  }

  Widget _getBody() {
    if (selected >= pages.length) selected = 0;

    return pages[selected];
  }

  Widget _getHeader() {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
          SizedBox.fromSize(size: Size.fromHeight(16)),
          Container(
              height: 128,
              width: 128,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/profile.jpg")))),
          SizedBox.fromSize(size: Size.fromHeight(16)),
          Text(
            "Hi, I'm Antonio",
            style: TextStyle(fontSize: 22),
          ),
          Text("XR Programmer @ Uqido"),
          SizedBox.fromSize(size: Size.fromHeight(16)),
        ]));
  }
}
