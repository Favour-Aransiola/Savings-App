import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class StartSaving extends StatelessWidget {
  const StartSaving({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Start Saving',
            style: TextStyle(
                fontFamily: 'SFPro',
                fontSize: 23,
                fontWeight: FontWeight.w600,
                color: blue),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 170,
                  height: 250,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xffB3E0F5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 18.5,
                          backgroundColor: blue,
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Text(
                          'Regular',
                          style: TextStyle(
                              fontFamily: 'SFPro',
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              color: blue),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Flexible savings. Save automatically, daily, weekly, monthly, up to 12.5% p.a',
                          style: TextStyle(
                              height: 1.5,
                              fontFamily: 'Arial',
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        )
                      ]),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 170,
                  height: 250,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.078),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 18.5,
                          backgroundColor: blue,
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        const Text(
                          'Vault',
                          style: TextStyle(
                              fontFamily: 'SFPro',
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff253E4A)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Lock funds for a period of time, minimum of 1months. Returns up to 12.5% p.a',
                          style: TextStyle(
                              height: 1.5,
                              fontFamily: 'Arial',
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        )
                      ]),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 170,
                  height: 250,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xffB3E0F5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 18.5,
                          backgroundColor: blue,
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Text(
                          'Goals',
                          style: TextStyle(
                              fontFamily: 'SFPro',
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              color: blue),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Flexible savings. Save automatically, daily, weekly, monthly, up to 12.5% p.a',
                          style: TextStyle(
                              height: 1.5,
                              fontFamily: 'Arial',
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        )
                      ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
