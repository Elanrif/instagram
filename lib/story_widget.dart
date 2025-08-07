import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({super.key});

  final List storyItems = [
    {'pseudo': 'Sandra', 'photo': 'assets/images/photo/photo-1.jpg'},
    {'pseudo': 'Lutin', 'photo': 'assets/images/photo/photo-2.jpg'},
    {'pseudo': 'SarahSmith Leonne', 'photo': 'assets/images/photo/photo-3.png'},
    {'pseudo': 'modPrety', 'photo': 'assets/images/photo/photo-4.jpg'},
    {'pseudo': 'kyleLumb', 'photo': 'assets/images/photo/photo-5.webp'},
    {'pseudo': 'kyleLumb', 'photo': 'assets/images/photo/photo-5.webp'},
    {'pseudo': 'kyleLumb', 'photo': 'assets/images/photo/photo-5.webp'},
    {'pseudo': 'kyleLumb', 'photo': 'assets/images/photo/photo-5.webp'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: storyItems.map((story) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/images/story-circle.png', height: 70),
                    Image.asset('assets/images/story-circle.png', height: 68),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(story['photo']),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  story['pseudo'],
                  maxLines: 1,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
