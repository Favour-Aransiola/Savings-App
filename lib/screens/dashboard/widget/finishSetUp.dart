import 'package:assesment/utils/colors.dart';
import 'package:flutter/material.dart';

class FinishSetUp extends StatelessWidget {
  const FinishSetUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 1)
          ]),
      height: 400,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Finish Setting your account',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: "SFPro",
                color: blue),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                '75%',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  fontFamily: "SFPro",
                ),
              ),
              Text('7 of 10 completed')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(height: 10),
          Center(
            child: Container(
              width: 350,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    width: 250,
                    height: 10,
                    decoration: BoxDecoration(
                      color: blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Spacer()
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: Colors.grey,
            height: 2,
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.account_box_rounded,
                    size: 20,
                    color: blue,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Personal Information',
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'SFPro',
                                color: blue,
                                fontWeight: FontWeight.w600)),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: const Text(
                            'When you register for an account, we collect personal information',
                            style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(
                          height: 27,
                        ),
                        const Text(
                          'Continue',
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Divider(
                          height: 2,
                          thickness: 5,
                          color: grey,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/verified.png',
                    width: 15,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 20,
                    child: Text('Confirm Email',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'SFPro',
                            color: blue,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email,
                    size: 20,
                    color: blue,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 20,
                    child: Text('Verification',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'SFPro',
                            color: blue,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Personal Information',
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'SFPro',
                color: blue,
                fontWeight: FontWeight.w600)),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: const Text(
            'When you register for an account, we collect personal information',
            style: TextStyle(
                fontFamily: 'Arial', fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(
          height: 27,
        ),
        const Text(
          'Continue',
          style: TextStyle(
              fontFamily: 'Arial', fontSize: 17, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 5,
        ),
        Divider(
          height: 2,
          thickness: 5,
          color: grey,
        )
      ],
    );
  }
}
