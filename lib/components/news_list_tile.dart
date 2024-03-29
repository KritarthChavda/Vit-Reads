import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:vitreads/models/news_model.dart';

import '../screens/details_screen.dart';

class NewsListTile extends StatefulWidget {
  NewsListTile(this.data, {Key? key}) : super(key: key);
  NewsData data;
  @override
  State<NewsListTile> createState() => _NewsListTileState();
}

class _NewsListTileState extends State<NewsListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(widget.data),
            ));
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 20.0),
        padding: EdgeInsets.all(12.0),
        height: 130,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          // border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.circular(26.0),
        ),
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: Hero(
                tag: "${widget.data.title}",
                child: Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(widget.data.assetPath!),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Flexible(
              flex: 5,
              child: Column(
                children: [
                  Text(
                    widget.data.title!,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    widget.data.content!,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: const Color.fromARGB(137, 50, 50, 50),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
