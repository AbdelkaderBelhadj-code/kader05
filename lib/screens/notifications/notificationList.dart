import 'components/defaultBackButton.dart';
import 'package:flutter/material.dart';
import 'components/defaultAppBar.dart';
import 'components/notificationsTile.dart';
import 'notificationPage.dart';

class NotificationList extends StatefulWidget {
  NotificationList({ Key ?key}) : super(key: key);

  @override
  _NotificationListState createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: DefaultAppBar(
        title: 'Notifications',
        child: DefaultBackButton(key: null,),
      ),
      body: ListView.separated(
          physics: ClampingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 12,
          itemBuilder: (context, index) {
            return NotificationTiles(
              title: 'E-Commerce',
              subtitle: 'Thanks for download E-Commerce app.',
              enable: true,
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NotificationPage(key: null,))),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          }),
    );
  }
}