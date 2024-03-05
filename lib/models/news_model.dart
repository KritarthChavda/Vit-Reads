//while the app is building let's create the NewsData class

class NewsData {
  String? title;
  String? author;
  String? content;
  String? assetPath;
  String? date;

  //let's create the constructor
  NewsData(this.title, this.author, this.content, this.date, this.assetPath);

  //we will use dummy data to generate the news,but you can use a third party api or your own backend to extract the data
  //I will copy the data from my previous code, you can create your own data , I used newsApi to get the data
  static List<NewsData> breakingNewsData = [
    NewsData(
        "GeeksforGeeks Student Chapter",
        "IGeekForGeek",
        "GeeksforGeeks Presents — DSA 101: A Basics of DSA Workshop. Whether you're a beginner or an experienced coder, this workshop is designed for all levels of programming enthusiasts.",
        "Mentor: Mr Yash Dwivedi from GeeksforGeeks ",
        "assets/geek.jpg"),
    NewsData(
        "Marvell Technology",
        "PPT and Online Test is Scheduled on 4th March 2024",
        "Marvell Technology PPT and Online Test is Scheduled on 4th March 2024 @ PRP717 by 10.30 am Please find the attached eligible students list.",
        "Mentor: Mr Yash Dwivedi from GeeksforGeeks ",
        "assets/marvel.jpg"),
    NewsData(
        "GE Healthcare- Reg- national level competition",
        "Placement Office",
        "We are organizing a national level competition for candidates across college, request you to kindly forward the invite to the students in your college and we expect a hearty participation from the college.",
        "Mentor: Mr Yash Dwivedi from GeeksforGeeks ",
        "assets/ge.jpg"),
    NewsData(
        "VIT Bhopal Student Lands Dream Placement: Turning Aspirations into Reality",
        "Placements:VIT Bhopal ",
        "VIT Bhopal is celebrating a remarkable achievement as one of its students secures their dream placement, marking a significant milestone in their academic journey. The triumphant student, kirti , clinched a coveted position with Microsoft, a testament to their dedication, skills, and hard work. The dream placement not only recognizes the student's academic excellence but also underscores the quality of education and career preparation provided by VIT Bhopal. Faculty and fellow students express their pride and congratulations for this exceptional accomplishment. kirti's success serves as an inspiration for aspiring professionals at VIT Bhopal, reaffirming the institution's commitment to fostering a conducive environment for career growth and success. This achievement resonates within the VIT Bhopal community, reinforcing its reputation as a hub for nurturing talent and fostering future leaders",
        "2024-02-20",
        "assets/marvel.jpg"),
  ];

  static List<NewsData> recentNewsData = [
    NewsData(
      "2024 Student B. Tech student bags super dream internship in Moody's",
      "ABHINANDAN JAIN",
      "Over 90% placement records for the previous two years",
      "2024-03-04",
      "assets/1.jpg",
    ),
    NewsData(
      "National Science Day Celebration 2024",
      "Dr. Satya Surabhi",
      "Understading Autophagy in Health and Diseases",
      "2024-03-01",
      "assets/2.jpg",
    ),
    NewsData(
        "Mohit Chauhan performs at VIT Bhopal",
        "Advitya'24",
        "Mohit Chauhan mesmerized the audience at the college fest with his soulful melodies, creating an atmosphere of euphoria and musical bliss. The stage lit up with his charismatic presence as students swayed to his tunes, creating unforgettable memories that will echo through the corridors of the institution for years to come. Chauhan's electrifying performance left everyone spellbound, reaffirming the power of music to unite and uplift spirits. The event was a resounding success, showcasing the vibrant cultural tapestry of the college.",
        "2022-08-11",
        "assets/mohit.jpg"),
    NewsData(
        "Kabir cafe a folk and folk-fusion music band",
        "Advitya'24",
        "Kabir Cafe, the folk and folk-fusion music sensation hailing from Mumbai, transported the audience on a musical journey at VIT Bhopal. With their eclectic blend of traditional melodies and contemporary rhythms, they captivated hearts and minds alike, infusing the air with a sense of cultural resonance. The vibrant beats of their dholak and the soul-stirring lyrics of Kabir's verses reverberated across the campus, fostering a sense of unity and celebration among the attendees. Kabir Cafe's performance was a testament to the enduring appeal of folk music, leaving a lasting imprint on the cultural landscape of VIT Bhopal",
        "2022-08-11",
        "assets/kabir2.jpg"),
    NewsData(
        "VIT Bhopal Hosts Spectacular Inter-College Dance Competition!",
        "Advitya'24",
        " VIT Bhopal recently played host to a dazzling display of talent at its highly anticipated Inter-College Dance Competition. The campus came alive with the infectious energy of passionate dancers from various colleges, showcasing a kaleidoscope of dance styles and performances. From classical Kathak to contemporary hip-hop, the event was a testament to the diversity and creativity thriving within the student community",
        "2022-08-11",
        "assets/kabir.jpg"),
    NewsData(
        "VIT Bhopal's Cyber Security and Digital Forensics Clubs",
        "VIT Bhopal",
        " In a groundbreaking initiative, VIT Bhopal's Cyber Security and Digital Forensics Clubs, in collaboration with the OWASP Club and Linux Club, curated a thought-provoking panel discussion on the future trends of Generative AI from a security standpoint. The event brought together experts and enthusiasts alike to delve into the potential ramifications of AI advancements in the realm of cybersecurity. With a keen focus on emerging technologies and their implications for data privacy and integrity, the discussion provided valuable insights and foresight into safeguarding digital ecosystems against evolving threats. Attendees were treated to an engaging discourse that underscored the intersection of innovation and security, emphasizing the importance of proactive measures in the ever-evolving landscape of technology.",
        "2022-08-11",
        "assets/police.jpg"),
    NewsData(
      "Stellar Achievement 2024 Batch B. Tech student bags dream core offer in CUMI",
      "AVINI KULKARNI",
      "Over 90% placement records for the previous two years",
      "2024-02-24",
      "assets/3.jpg",
    ),
    NewsData(
      "National Science Day Celebration 2024",
      "Janardhan Padmanabhan",
      "Our Two Faced Sun-Can We Take it for Granted",
      "2024-02-24",
      "assets/4.jpg",
    ),
  ];
  static List<NewsData> GeneralNewsData = [
    NewsData(
      "2024 Student B. Tech student bags super dream internship in Moody's",
      "ABHINANDAN JAIN",
      "Over 90% placement records for the previous two years",
      "2024-03-04",
      "assets/1.jpg",
    ),
    NewsData(
      "National Science Day Celebration 2024",
      "Dr. Satya Surabhi",
      "Understading Autophagy in Health and Diseases",
      "2024-03-01",
      "assets/2.jpg",
    ),
    NewsData(
        "Mohit Chauhan performs at VIT Bhopal",
        "Advitya'24",
        "Mohit Chauhan mesmerized the audience at the college fest with his soulful melodies, creating an atmosphere of euphoria and musical bliss. The stage lit up with his charismatic presence as students swayed to his tunes, creating unforgettable memories that will echo through the corridors of the institution for years to come. Chauhan's electrifying performance left everyone spellbound, reaffirming the power of music to unite and uplift spirits. The event was a resounding success, showcasing the vibrant cultural tapestry of the college.",
        "2022-08-11",
        "assets/mohit.jpg"),
    NewsData(
        "Kabir cafe a folk and folk-fusion music band",
        "Advitya'24",
        "Kabir Cafe, the folk and folk-fusion music sensation hailing from Mumbai, transported the audience on a musical journey at VIT Bhopal. With their eclectic blend of traditional melodies and contemporary rhythms, they captivated hearts and minds alike, infusing the air with a sense of cultural resonance. The vibrant beats of their dholak and the soul-stirring lyrics of Kabir's verses reverberated across the campus, fostering a sense of unity and celebration among the attendees. Kabir Cafe's performance was a testament to the enduring appeal of folk music, leaving a lasting imprint on the cultural landscape of VIT Bhopal",
        "2022-08-11",
        "assets/kabir2.jpg"),
    NewsData(
        "VIT Bhopal Hosts Spectacular Inter-College Dance Competition!",
        "Advitya'24",
        " VIT Bhopal recently played host to a dazzling display of talent at its highly anticipated Inter-College Dance Competition. The campus came alive with the infectious energy of passionate dancers from various colleges, showcasing a kaleidoscope of dance styles and performances. From classical Kathak to contemporary hip-hop, the event was a testament to the diversity and creativity thriving within the student community",
        "2022-08-11",
        "assets/kabir.jpg"),
    NewsData(
        "VIT Bhopal's Cyber Security and Digital Forensics Clubs",
        "VIT Bhopal",
        " In a groundbreaking initiative, VIT Bhopal's Cyber Security and Digital Forensics Clubs, in collaboration with the OWASP Club and Linux Club, curated a thought-provoking panel discussion on the future trends of Generative AI from a security standpoint. The event brought together experts and enthusiasts alike to delve into the potential ramifications of AI advancements in the realm of cybersecurity. With a keen focus on emerging technologies and their implications for data privacy and integrity, the discussion provided valuable insights and foresight into safeguarding digital ecosystems against evolving threats. Attendees were treated to an engaging discourse that underscored the intersection of innovation and security, emphasizing the importance of proactive measures in the ever-evolving landscape of technology.",
        "2022-08-11",
        "assets/police.jpg"),
    NewsData(
      "Stellar Achievement 2024 Batch B. Tech student bags dream core offer in CUMI",
      "AVINI KULKARNI",
      "Over 90% placement records for the previous two years",
      "2024-02-24",
      "assets/3.jpg",
    ),
    NewsData(
      "National Science Day Celebration 2024",
      "Janardhan Padmanabhan",
      "Our Two Faced Sun-Can We Take it for Granted",
      "2024-02-24",
      "assets/4.jpg",
    ),
  ];
}
