//now let's for the details screen

import 'package:flutter/material.dart';
import 'package:vitreads/models/news_model.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen(this.data, {Key? key}) : super(key: key);
  NewsData data;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 0, 0)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.data.title!,
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                widget.data.author!,
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Hero(
                tag: "${widget.data.title}",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    widget.data
                        .assetPath!, // Assuming assetPath is defined in your NewsData class
                    // Specify other image properties as needed
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(widget.data.content!)
            ],
          ),
        ),
      ),
    );
  }
}
