import 'package:flutter/material.dart';

class HomeMenuTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData trailingIcon;
  final GestureTapCallback onTap;
  const HomeMenuTile({
    Key key,
    @required this.title,
    this.subtitle = '',
    this.trailingIcon = Icons.chevron_right,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(trailingIcon),
      onTap: onTap,
    );
  }
}
