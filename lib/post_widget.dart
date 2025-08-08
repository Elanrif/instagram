import 'package:flutter/material.dart';
import 'package:instagram/main.dart';

class PostWidget extends StatelessWidget {
  PostWidget({super.key});

  final List postItems = [
    {
      "pseudo": "Elanrif",
      "photo": "assets/images/photo/photo-1.jpg",
      "photoProfil": "assets/images/profil/profil-1.png",
      "description": "😘😘Petit moment de détente au bord de la mer.",
    },
    {
      "pseudo": "Manar",
      "photo": "assets/images/photo/photo-2.jpg",
      "photoProfil": "assets/images/profil/profil-2.png",
      "description": "Balade dans la ville au coucher du soleil.",
    },
    {
      "pseudo": "Alexis",
      "photo": "assets/images/photo/photo-3.png",
      "photoProfil": "assets/images/profil/profil-3.webp",
      "description": "🍵🍵🍵Un café pour bien commencer la journée.",
    },
    {
      "pseudo": "Sandra",
      "photo": "assets/images/photo/photo-4.jpg",
      "photoProfil": "assets/images/profil/profil-4.jpeg",
      "description":
          "Souvenir d'un voyage inoubliable à MontRéal accompagné par ma famille.",
    },
    {
      "pseudo": "Lutin",
      "photo": "assets/images/photo/photo-5.webp",
      "photoProfil": "assets/images/profil/profil-5.webp",
      "description": "Exploration de nouveaux paysages.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: postItems.map((post) {
        return Column(
          children: [
            Container(
              height: 50,
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(post['photoProfil']),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    post['pseudo'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 5),
                  Image.asset(
                    'assets/images/verification-badge.png',
                    height: 13,
                  ),
                  Expanded(child: Container()),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
                ],
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(post['photo']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_outline),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message_outlined),
                ),
                Builder(
                  builder: (context) => IconButton(
                    onPressed: () {
                      showShareBottomSheet(context, socialMedias);
                    },
                    icon: const Icon(Icons.send_outlined),
                  ),
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_outline),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(post['photo']),
                  ),
                  SizedBox(width: 10),
                  RichText(
                    text: TextSpan(
                      text: 'Aimé par ',
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                          text: post['pseudo'],
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        TextSpan(text: ' et '),
                        TextSpan(
                          text: '123 autres personnes',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        post['pseudo'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          post['description'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        'See more',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'See 35 comments',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '16 min ago',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Translate',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
