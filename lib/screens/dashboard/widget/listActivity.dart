import 'package:flutter/material.dart';

class ListActivity extends StatelessWidget {
  const ListActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/images/topup.png',
            width: 70,
          ),
          Image.asset(
            'assets/images/plans.png',
            width: 70,
          ),
          Image.asset(
            'assets/images/challengeCircle.png',
            width: 70,
          ),
          Image.asset(
            'assets/images/wallet.png',
            width: 70,
          ),
          Image.asset(
            'assets/images/portfolioCircle.png',
            width: 70,
          ),
        ],
      ),
    );
  }
}
