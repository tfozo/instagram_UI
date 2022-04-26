import 'package:flutter/material.dart';
import 'package:instagram_ui/util/bubble_stories.dart';
import 'package:instagram_ui/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'abeni',
    'ujulo',
    'madagu',
    'maria',
    'dahlia',
    'medanit',
    'hiyaw',
    'fikr'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram', style: TextStyle(color: Colors.black)),
            Row(
              children: [
                Icon(
                  Icons.add,
                  color: Colors.black,
                ),

                ///I added a padding only to the middle and now it pushes
                //both icons on the sides. :)
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.share,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(text: people[index]);
              },
            ),
          ),
//posts
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    name: people[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
