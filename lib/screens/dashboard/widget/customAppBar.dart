import 'package:assesment/screens/dashboard/widget/listActivity.dart';
import 'package:assesment/screens/dashboard/widget/listCards.dart';
import 'package:assesment/screens/dashboard/widget/notification.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double width;
  CustomAppBar({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff253E4A), Color(0xff070C0F)])),
        padding: const EdgeInsets.all(20),
        width: width,
        height: 375,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/menu.png',
                    width: 30,
                  )),
              Flexible(
                  flex: 3,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 200,
                  )),
              Flexible(flex: 1, child: NotificationBell())
            ],
          ),
          const SizedBox(height: 45),
          ListCard(),
          const SizedBox(height: 22),
          ListActivity()
        ]

            // flexibleSpace: ,
            ));
  }

  @override
  Size get preferredSize => Size(width, 375);
}
