import 'package:assesment/screens/dashboard/widget/activePlans.dart';
import 'package:assesment/screens/dashboard/widget/customAppBar.dart';
import 'package:assesment/screens/dashboard/widget/finishSetUp.dart';
import 'package:assesment/screens/dashboard/widget/invite.dart';
import 'package:assesment/screens/dashboard/widget/listActivity.dart';
import 'package:assesment/screens/dashboard/widget/listCards.dart';
import 'package:assesment/screens/dashboard/widget/notification.dart';
import 'package:assesment/screens/dashboard/widget/startSaving.dart';
import 'package:assesment/screens/dashboard/widget/watchVideo.dart';
import 'package:assesment/utils/colors.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  static const routeName = '/dashboard';
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE4E4E4),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xff253E4A),

            pinned: true,
            title: Container(
              child: Row(
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
            ),
            // collapsedHeight: 100,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xff253E4A), Color(0xff070C0F)])),
                  padding: const EdgeInsets.all(20),
                  margin: EdgeInsets.only(top: 50),
                  height: 375,
                  child: Column(children: [
                    const SizedBox(height: 45),
                    ListCard(),
                    const SizedBox(height: 22),
                    ListActivity()
                  ]

                      // flexibleSpace: ,
                      )),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    height: 400,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(14),
                          width: double.infinity,
                          height: 400,
                          child: const FinishSetUp(),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Positioned(
                            bottom: 30,
                            right: 30,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: blue,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 40,
                              ),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 250,
                    child: StartSaving(),
                  ),
                  const SizedBox(
                    height: 650,
                    child: ActivePlans(),
                  ),
                  Center(
                    child: Container(
                        alignment: Alignment.center,
                        width: 310,
                        height: 50,
                        child: Text(
                          'See all',
                          style: TextStyle(
                              color: blue,
                              fontSize: 15,
                              fontFamily: 'SFPro',
                              fontWeight: FontWeight.w400),
                        ),
                        decoration: BoxDecoration(color: Color(0xffb5e2f8))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(25),
                    width: double.infinity,
                    height: 500,
                    child: WatchVideo(),
                  ),
                  const SizedBox(
                    height: 950,
                    child: Invite(),
                  )
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
