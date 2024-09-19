import 'package:antonio_ruggiero_website/views/effect_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InstagramView extends StatelessWidget {
  static const String sashaDogIconUrl =
      "https://scontent-mxp1-2.xx.fbcdn.net/v/t39.10260-6/69280886_712740072508099_7234937689319931904_n.png?_nc_cat=1&ccb=2&_nc_sid=df6b83&_nc_ohc=utykVEwxqY0AX-EJH7e&_nc_ht=scontent-mxp1-2.xx&oh=98565de6848ce6d8a8c1fc437831c5ef&oe=6013BBBE";

  static const String sashaDogEffectUrl = "http://bit.ly/SashaInstaDog";

  static const String mrSkeltalIconUrl =
      "https://scontent-mxp1-2.xx.fbcdn.net/v/t39.10260-6/72703834_409347149727342_7349940987768078336_n.png?_nc_cat=100&ccb=2&_nc_sid=df6b83&_nc_ohc=UgHkcIk4vvwAX8kUVQP&_nc_ht=scontent-mxp1-2.xx&oh=1e415b13a3e336e40298b6772a60f79d&oe=601423AF";

  static const String mrSkeltalEffectUrl = "http://bit.ly/ThankMrSkeltal";

  const InstagramView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox.fromSize(size: const Size.fromHeight(16)),
          EffectCard(Image.network(sashaDogIconUrl), "Sasha Dog Filter",
              sashaDogEffectUrl),
          SizedBox.fromSize(size: const Size.fromHeight(32)),
          EffectCard(Image.network(mrSkeltalIconUrl),
              "Thanks Mr Skeltal Filter", mrSkeltalEffectUrl),
        ],
      ),
    );
  }
}
