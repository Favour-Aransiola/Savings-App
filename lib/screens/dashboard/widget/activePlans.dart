import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../utils/colors.dart';

class ActivePlans extends StatelessWidget {
  const ActivePlans({
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
            'Active Plans',
            style: TextStyle(
                fontFamily: 'SFPro',
                fontSize: 23,
                fontWeight: FontWeight.w600,
                color: blue),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 570,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 150,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color(0xff727DA6).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 54,
                            height: 20,
                            child: const Text(
                              'Goals',
                              style: TextStyle(
                                  fontFamily: 'SFPro',
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            decoration: BoxDecoration(
                                color: const Color(0xff0F5879),
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          const Text('Saving for Travel',
                              style: TextStyle(
                                  fontFamily: 'SFPro',
                                  fontSize: 17,
                                  color: Color(0xff494949),
                                  fontWeight: FontWeight.w500)),
                          const Text('N 1,324,000.00',
                              style: TextStyle(
                                  fontFamily: 'SFPro',
                                  fontSize: 30,
                                  color: Color(0xff253E4A),
                                  fontWeight: FontWeight.w500)),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 54,
                                height: 25,
                                child: Text(
                                  'On Track',
                                  style: TextStyle(
                                      fontFamily: 'SFPro',
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xff1CBC31),
                                    borderRadius: BorderRadius.circular(2)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('3 DAYS TO MATURITY',
                                  style: TextStyle(
                                      fontFamily: 'SFPro',
                                      fontSize: 10,
                                      color: Color(0xff1CBC31),
                                      fontWeight: FontWeight.w500))
                            ],
                          )
                        ],
                      ),
                      CircularPercentIndicator(
                        radius: 50.0,
                        lineWidth: 10.0,
                        percent: 0.76,
                        center: Text(
                          '76%',
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.w400,
                              fontSize: 22),
                        ),
                        backgroundColor: Colors.grey,
                        progressColor: Color(0xff1CBC31),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 150,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color(0xff727DA6).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 54,
                            height: 20,
                            child: const Text(
                              'Goals',
                              style: TextStyle(
                                  fontFamily: 'SFPro',
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            decoration: BoxDecoration(
                                color: const Color(0xff0F5879),
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          const Text('Saving for School',
                              style: TextStyle(
                                  fontFamily: 'SFPro',
                                  fontSize: 17,
                                  color: Color(0xff494949),
                                  fontWeight: FontWeight.w500)),
                          const Text('N 1,324,000.00',
                              style: TextStyle(
                                  fontFamily: 'SFPro',
                                  fontSize: 30,
                                  color: Color(0xff253E4A),
                                  fontWeight: FontWeight.w500)),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 54,
                                height: 25,
                                child: Text(
                                  'On Track',
                                  style: TextStyle(
                                      fontFamily: 'SFPro',
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xff1CBC31),
                                    borderRadius: BorderRadius.circular(2)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('3 DAYS TO MATURITY',
                                  style: TextStyle(
                                      fontFamily: 'SFPro',
                                      fontSize: 10,
                                      color: Color(0xff1CBC31),
                                      fontWeight: FontWeight.w500))
                            ],
                          )
                        ],
                      ),
                      CircularPercentIndicator(
                        radius: 50.0,
                        lineWidth: 10.0,
                        percent: 0.26,
                        center: Text(
                          '26%',
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.w400,
                              fontSize: 22),
                        ),
                        backgroundColor: Colors.grey,
                        progressColor: Color(0xff1CBC31),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 200,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color(0xff727DA6).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 54,
                        height: 20,
                        child: const Text(
                          'Vault',
                          style: TextStyle(
                              fontFamily: 'SFPro',
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text('Saving for a group vacation in September',
                            style: TextStyle(
                                fontFamily: 'SFPro',
                                fontSize: 17,
                                height: 1.2,
                                color: Color(0xff494949),
                                fontWeight: FontWeight.w500)),
                      ),
                      const Divider(
                        color: Colors.black,
                        height: 2,
                        thickness: 1,
                      ),
                      const Text('N 1,324,000.00',
                          style: TextStyle(
                              fontFamily: 'SFPro',
                              fontSize: 30,
                              color: Color(0xff253E4A),
                              fontWeight: FontWeight.w500)),
                      Row(
                        children: const [
                          Text(
                            '0.7% Today',
                            style: TextStyle(
                                fontFamily: 'SFPro',
                                fontSize: 10,
                                color: Color(0xff1CBC31),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('18 DAYS MORE BEFORE UNLOCKING',
                              style: TextStyle(
                                  fontFamily: 'SFPro',
                                  fontSize: 12,
                                  color: Color(0xff6D6D6D),
                                  fontWeight: FontWeight.w500))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
