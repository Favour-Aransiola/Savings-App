import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class Invite extends StatelessWidget {
  const Invite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/invite.png',
          height: 500,
        ),
        Center(
          child: Stack(
            children: [
              Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/images/savings.png'),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                  top: 10,
                  left: 0,
                  child: Container(
                    width: 400,
                    height: 50,
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Savings challenge ',
                          style: TextStyle(
                              fontFamily: 'SFPro',
                              fontSize: 21,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        Text(
                          'Start a savings challenge with your friends',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )
                      ],
                    ),
                  )),
              Positioned(
                  left: 10,
                  bottom: 20,
                  child: Container(
                    width: 150,
                    height: 57,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        )),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Start Now',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 30,
                          )
                        ]),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
