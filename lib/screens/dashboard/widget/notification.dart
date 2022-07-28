import 'package:assesment/utils/colors.dart';
import 'package:flutter/material.dart';

class NotificationBell extends StatelessWidget {
  const NotificationBell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 35,
        height: 35,
        child: Stack(
          children: [
            Image.asset('assets/images/bell.png'),
            Positioned(
                left: 0,
                top: 0,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: blue,
                  child: const Text(
                    '4',
                    style: TextStyle(
                        color: Colors.white, fontSize: 11, fontFamily: 'SFPro'),
                  ),
                ))
          ],
        ));
  }
}
