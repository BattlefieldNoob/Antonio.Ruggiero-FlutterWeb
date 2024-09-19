import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RepoCard extends StatelessWidget {
  static const Color disabledColor = const Color.fromRGBO(48, 46, 50, 1.0);

  final String name;
  final String? details;
  final String url;

  const RepoCard(
    this.name,
    this.url, {
    this.details,
  }) : super(key: null);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      child: Center(
          child: ListTile(
              onTap: () => launch(url),
              title: Text(name),
              subtitle: details != null ? Text(details!) : null,
              trailing: InkWell(
                  onTap: () => launch(url),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.open_in_new,
                      ))))),
    );
  }
}
