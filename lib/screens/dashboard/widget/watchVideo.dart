import 'dart:ui';

import 'package:assesment/utils/colors.dart';
import 'package:flutter/material.dart';

class WatchVideo extends StatelessWidget {
  const WatchVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage('assets/images/advert.png'),
                  fit: BoxFit.cover)),
        ),
        Positioned(
            top: 10,
            right: 20,
            child: Image.asset(
              'assets/images/ronvest.png',
              width: 200,
            )),
        Positioned(
            bottom: 10,
            left: (MediaQuery.of(context).size.width / 2) - 170,
            child: Container(
              width: 300,
              height: 250,
              padding: EdgeInsets.all(10),
              // margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Saver Strories',
                      style: TextStyle(
                          color: blue,
                          fontSize: 28,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      width: 250,
                      child: Text('Meet the Ronvest Mega Savers of 2022',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.w400)),
                    ),
                    Container(
                      width: 200,
                      height: 57,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: blue,
                            width: 1,
                          )),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Watch Video',
                                style: TextStyle(
                                    color: blue,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w400)),
                            Icon(
                              Icons.play_circle_outline_outlined,
                              size: 35,
                              color: blue,
                            )
                          ]),
                    )
                  ]),
            ))
      ],
    );
  }
}
