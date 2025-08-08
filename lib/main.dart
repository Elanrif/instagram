import 'package:flutter/material.dart';
import 'package:instagram/post_widget.dart';
import 'package:instagram/story_widget.dart';

final List storyItems = [
  {
    'pseudo': 'Elanrif',
    'firstName': 'Elanrif',
    'lastName': 'Said Baco',
    'photo': 'assets/images/profil/profil-1.png',
  },
  {
    'pseudo': 'Manar',
    'firstName': 'Manar',
    'lastName': 'Bakhat',
    'photo': 'assets/images/profil/profil-2.png',
  },
  {
    'pseudo': 'Alexis',
    'firstName': 'Alexis',
    'lastName': 'Putellas',
    'photo': 'assets/images/profil/profil-7.jpg',
  },
  {
    'pseudo': 'Sandra',
    'firstName': 'Sandra',
    'lastName': 'Dupont',
    'photo': 'assets/images/photo/photo-1.jpg',
  },
  {
    'pseudo': 'Lutin',
    'firstName': 'Luc',
    'lastName': 'Martin',
    'photo': 'assets/images/photo/photo-2.jpg',
  },
  {
    'pseudo': 'Sarah',
    'firstName': 'Sarah',
    'lastName': 'Smith Leonne',
    'photo': 'assets/images/photo/photo-3.png',
  },
  {
    'pseudo': 'modPrety',
    'firstName': 'Mod',
    'lastName': 'Prety',
    'photo': 'assets/images/photo/photo-4.jpg',
  },
  {
    'pseudo': 'kyleLumb',
    'firstName': 'Kyle',
    'lastName': 'Lumb',
    'photo': 'assets/images/photo/photo-5.webp',
  },
];

final List socialMedias = [
  {'name': 'Partager via', 'icon': Icon(Icons.share)},
  {'name': 'copier le lien', 'icon': Icon(Icons.copy)},
  {'name': 'WhatsApp', 'icon': 'assets/images/social-media/whatsApp.png'},
  {'name': 'Facebook', 'icon': 'assets/images/social-media/facebook.png'},
  {'name': 'Gmail', 'icon': 'assets/images/social-media/g-mail.png'},
  {'name': 'Messenger', 'icon': 'assets/images/social-media/messenger.jpeg'},
  {'name': 'X', 'icon': 'assets/images/social-media/x.png'},
];
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Instagram',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Builder(
            builder: (context) => GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Container(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/instagram-logo.png',
                  height: 50,
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.send_outlined)),
          ],
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Instagram',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [StoryWidget(), PostWidget()]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey.shade200,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.shade700,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined),
              label: 'Add Photo',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profil',
            ),
          ],
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () {
              showShareBottomSheet(context, socialMedias);
            },
            backgroundColor: Colors.blue,
            child: const Icon(Icons.add, color: Colors.white),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      ),
    );
  }
}

void showShareBottomSheet(BuildContext context, List socialMedias) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 16,
          right: 16,
          top: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Envoyer comme message',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Rechercher...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Color(0xFFFD1D1D),
                    width: 2,
                  ), // orange Instagram (ou rouge vif)
                ),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
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
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(story['photo']),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          story['firstName'],
                          maxLines: 1,
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          story['lastName'],
                          maxLines: 1,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                height: 1,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: socialMedias.map((socialMedia) {
                  final iconData = socialMedia['icon'];

                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey.shade300,
                          child: iconData is Widget
                              ? iconData
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    iconData,
                                    fit: BoxFit.cover,
                                    width: 60,
                                    height: 60,
                                  ),
                                ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: 75,
                          alignment: Alignment.center,
                          child: Text(
                            socialMedia['name'],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      );
    },
  );
}
