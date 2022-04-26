import 'package:flutter/material.dart';
import 'package:instagram_ui/util/account_tap1.dart';
import 'package:instagram_ui/util/account_tap2.dart';
import 'package:instagram_ui/util/account_tap3.dart';
import 'package:instagram_ui/util/account_tap4.dart';
import 'package:instagram_ui/util/bubble_stories.dart';

class UserAccount extends StatefulWidget {
  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  List<Color> _colors = [
    Colors.green,
    Colors.pink,
    Colors.blue,
    Colors.purple,
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                    ),
                    //number of posts, followers. following

                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                '237',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text('Posts')
                            ],
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '3930',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text('Followers')
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '40',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text('Following')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Bio and link

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Ebenezer',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.0),
                        child: Text('I created apps & games'),
                      ),
                      Text(
                        'm.youtube.com/mitchkoko/',
                        style: TextStyle(color: Colors.blue),
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Container(
                          height: 25, //optional
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: Center(child: Text('Edit Profile')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Container(
                          height: 25, //optional
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: Center(child: Text('Ad tools')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Container(
                          height: 25, //optional
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: Center(child: Text('Insights')),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //stories
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Row(
                  children: [
                    BubbleStories(text: 'Story 1'),
                    BubbleStories(text: 'Story 2'),
                    BubbleStories(text: 'Story 3'),
                    BubbleStories(text: 'Story 4'),
                  ],
                ),
              ),
              TabBar(
                //mess around the properties cool
                //I wanted the indicator and lable to change Color
                //As the color of the tabbarview(or the grids)
                onTap: (value) {
                  setState(() {
                    _colors[value];
                  });
                },
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    icon: Icon(Icons.grid_3x3_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.video_call),
                  ),
                  Tab(icon: Icon(Icons.shop)),
                  Tab(
                    icon: Icon(Icons.person),
                  ),
                ],
              ),
              Expanded(
                  child: TabBarView(children: [
                AccountTap1(),
                AccountTap2(),
                AccountTap3(),
                AccountTap4()
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
