import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';


class NotificationTiles extends StatelessWidget {
  final String title, subtitle;
  final VoidCallback onTap;
  final bool enable;
  const NotificationTiles({
     Key? key,  required this.title, required this.subtitle, required this.onTap, required this.enable
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/picc.png"), fit: BoxFit.cover))),
      title: Text(title, style: TextStyle(color: kPrimaryColor)),
      subtitle: Text(subtitle,
          style: TextStyle(color: kPrimaryColor)),
      onTap:onTap,
      enabled: enable,
    );
  }
}