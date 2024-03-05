//let's start by our home screen
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vitreads/components/breaking_news_card.dart';
import 'package:vitreads/components/news_list_tile.dart';
import 'package:vitreads/models/news_model.dart';
import 'package:vitreads/screens/emergency.dart';
import 'package:vitreads/screens/profile.dart';
import 'package:vitreads/screens/types_scren.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //let's start with the Appbar
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Vit Reads",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EmergencyScreen()));
              },
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              ))
        ],
      ),

      //Let's now work on the body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Headlines",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //let's build our caroussel
              CarouselSlider.builder(
                  itemCount: NewsData.breakingNewsData.length,
                  itemBuilder: (context, index, id) =>
                      BreakingNewsCard(NewsData.breakingNewsData[index]),
                  options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                  )),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                "Recent News",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              //now let's create the cards for the recent news
              Column(
                children: NewsData.recentNewsData
                    .map((e) => NewsListTile(e))
                    .toList(),
              ),
            ],
          ),
        ),
      ),

      //Now let's create the button navigation bar
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16),
        ),
        child: BottomNavigationBar(
          elevation: 0.0,
          selectedItemColor: Color.fromARGB(255, 255, 89, 0),
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: "Bookmark",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.rss_feed_rounded),
              label: "Feed",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
          onTap: (index) {
            // Handle navigation based on the selected index
            switch (index) {
              case 0:
                // Navigate to the Home screen
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
                break;
              case 1:
                // Navigate to the Bookmark screen
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewsScreen()));
                break;
              case 2:
                // Navigate to the Feed screen
                // Navigator.push(context, MaterialPageRoute(builder: (context) => FeedScreen()));
                break;
              case 3:
                // Navigate to the Profile screen
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
                break;
            }
          },
        ),
      ),
    );
  }
}
