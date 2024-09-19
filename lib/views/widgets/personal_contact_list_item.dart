import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonalContactListItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String url;

  const PersonalContactListItem(
    this.icon,
    this.label,
    this.url,
  ) : super(key: null);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(4),
        child: TextButton.icon(
          icon: Icon(
            icon,
            size: 16,
          ),
          label: Text(label),
          onPressed: () => launch(url),
        ));
  }
}
