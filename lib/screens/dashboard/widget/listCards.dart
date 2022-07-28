import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 126.3,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: 288.15,
            height: 126.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(children: const [
                  Text(
                    'Total Naira balance',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.visibility_off, color: Colors.white)
                ]),
                Row(
                  children: [
                    Image.asset('assets/images/naira.png', width: 30),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      '450,093.00',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          overflow: TextOverflow.fade),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/naira.png',
                      width: 15,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '450,093.00',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '55%',
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/images/arrowUp.png',
                      width: 10,
                    )
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
                color: const Color(0xff7fccef).withOpacity(0.18),
                borderRadius: BorderRadius.circular(5)),
          ),
          const SizedBox(
            width: 16.85,
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 288.15,
            height: 126.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(children: const [
                  Text(
                    'Total Naira balance',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.visibility_off, color: Colors.white)
                ]),
                Row(
                  children: [
                    Image.asset('assets/images/naira.png', width: 30),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      '450,093.00',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          overflow: TextOverflow.fade),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/naira.png',
                      width: 15,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '450,093.00',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '55%',
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/images/arrowUp.png',
                      width: 10,
                    )
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
                color: const Color(0xff7fccef).withOpacity(0.18),
                borderRadius: BorderRadius.circular(5)),
          )
        ],
      ),
    );
  }
}
