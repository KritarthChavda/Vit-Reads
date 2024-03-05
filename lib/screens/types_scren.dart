import 'package:flutter/material.dart';
import 'package:vitreads/screens/home_screen.dart';
import 'package:vitreads/screens/profile.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  // Assuming you have your own list of news articles
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: TabBar(
                  isScrollable: true, // Make the TabBar scrollable
                  tabs: [
                    Tab(text: 'General'),
                    Tab(text: 'Entertainment'),
                    Tab(text: 'Technology'),
                    Tab(text: 'Clubs'),
                    Tab(text: 'Academics'),
                    Tab(text: 'Sports'),
                  ],
                ),
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text('Politics News')),
              Center(child: Text('Sports News')),
              Center(child: Text('Technology News')),
            ],
          ),
          bottomNavigationBar: Container(
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(16),
            ),
            child: BottomNavigationBar(
              elevation: 0.0,
              selectedItemColor: const Color.fromARGB(255, 255, 89, 0),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                    break;
                  case 1:
                    // Navigate to the Bookmark screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NewsScreen()));
                    break;
                  case 2:
                    // Navigate to the Feed screen
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => FeedScreen()));
                    break;
                  case 3:
                    // Navigate to the Profile screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileScreen()));
                    break;
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
