import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EffectCard extends StatelessWidget {
  static const Color disabledColor = Color.fromRGBO(48, 46, 50, 1.0);

  final Widget icon;
  final String name;
  final String? details;
  final String url;

  const EffectCard(
    this.icon,
    this.name,
    this.url, {
    this.details,
  }) : super(key: null);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      child: ListTile(
          contentPadding: const EdgeInsets.all(18),
          onTap: () => launchUrl(Uri.parse(url)),
          leading: icon,
          title: Text(name),
          subtitle: details != null ? Text(details!) : null,
          trailing: InkWell(
              onTap: () => launchUrl(Uri.parse(url)),
              child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(
                    Icons.open_in_new,
                  )))),
    );
  }
}
