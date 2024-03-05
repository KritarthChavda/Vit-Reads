import 'package:flutter/material.dart';
import 'package:vitreads/screens/profile.dart';
import 'package:vitreads/screens/types_scren.dart';

class EmergencyScreen extends StatefulWidget {
  const EmergencyScreen({super.key});

  @override
  State<EmergencyScreen> createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Color.fromARGB(255, 255, 0, 0)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Community Rally: Urgent Call for Platelet Donors to Support Brave Young Girl Battling in the Hospital",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text(
                  "Emergency",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    "assets/mos.jpg", // Placeholder image path
                    // Specify other image properties as needed
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                    "In a heart-wrenching situation, a young girl is currently hospitalized, in urgent need of platelets to combat a severe medical condition. The ten-year-old was       diagnosed with a rare blood disorder, causing a sharp decline in her platelet levels. Hospital sources indicate that while the patient is in stable condition, immediate platelet transfusions are crucial for her recovery. The family is reaching out to the community, urging eligible donors to come forward and donate platelets to support the girl's fight against the illness. The medical team is working tirelessly to manage her condition, and local blood banks are collaborating to meet the urgent demand for platelets. The family expresses deep gratitude for any support received and encourages people to contribute to the ongoing efforts to ensure the girl receives the vital treatment she needs. Regular updates on her condition are expected, highlighting the importance of community involvement in saving lives through platelet donations."),
              ],
            ),
          ),
        ),
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
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
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
        ));
  }
}
