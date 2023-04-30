import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:home/card.dart';
import 'package:list_wheel_scroll_view_nls/list_wheel_scroll_view_nls.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List mentors = [
    'assets/images/person1.jpg',
    'assets/images/person2.jpg',
    'assets/images/person3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/images/logo.png",
          height: 340,
          width: 150,
        ),
        actions: <Widget>[
          IconButton(
              icon: Image.asset("assets/images/icon.png"), onPressed: () {}),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 55,
        ),
        child: Column(
          children: [
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "the",
                    style: TextStyle(
                        color: Color(0xFFEB8E2E),
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Future ",
                    style: TextStyle(
                        color: Color(0xFFEB8E2E),
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "of Learning!",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Start Learning by best creators for",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "absolutely Free!",
                    style: TextStyle(
                        color: Color(0xFFEB8E2E),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          for (int i = 0; i < mentors.length; i++)
                            Align(
                              widthFactor: 0.4,
                              child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(mentors[i])),
                            )
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                '50+',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Mentors',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black87),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 1,
                            child: const DecoratedBox(
                              decoration:
                                  const BoxDecoration(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                '4.8/5',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/images/rate.png',
                                    height: 16,
                                    //  width: 20,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Ratings',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black87),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Start Learning now  -->",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          backgroundColor: Color(0xFFEB8E2E)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
                flex: 5,
                child: ListWheelScrollViewX(
                  scrollDirection: Axis.horizontal,
                  itemExtent: 230,
                  physics: FixedExtentScrollPhysics(),
                  perspective: 0.003,
                  children: [
                    card_(
                      description:
                          ('Earn exclusive rewards by developing your skills with us'),
                      title1: ('Earn'),
                      title2: ('CipherPoints'),
                    ),
                    card_(
                      description:
                          ('Unlock quality content with our Q-rated content!'),
                      title1: ('Q-rated'),
                      title2: ('Content'),
                    ),
                    card_(
                      description:
                          ('Get the hands-on experience with real-time projects'),
                      title1: ('Projects'),
                      title2: (''),
                    ),
                    card_(
                      description:
                          ('Earn exclusive rewards by developing your skills with us'),
                      title1: ('Earn'),
                      title2: ('CipherPoints'),
                    ),
                    card_(
                      description:
                          ('Unlock quality content with our Q-rated content!'),
                      title1: ('Q-rated'),
                      title2: ('Content'),
                    ),
                    card_(
                      description:
                          ('Get the hands-on experience with real-time projects'),
                      title1: ('Projects'),
                      title2: (''),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
