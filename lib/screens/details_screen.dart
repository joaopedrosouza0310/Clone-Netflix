import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

class DetailsScreen extends StatelessWidget {
  //String title, description, imgPath;
  //DetailsScreen(this.title, this.description, this.imgPath);

  String imgPath, title, url;

  DetailsScreen(this.imgPath, this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height - 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            imgPath,
                          ),
                          fit: BoxFit.cover))),
              BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  height: MediaQuery.of(context).size.height - 150,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black
                      ])),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Center(
                            child: Hero(
                          tag: title,
                          child: Image.asset(
                            imgPath,
                            fit: BoxFit.fitHeight,
                          ),
                        )),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "97% Aprovação",
                          style: TextStyle(color: Colors.green, fontSize: 14),
                        ),
                        Text(
                          "2016",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Text(
                          "TV-56",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Text(
                          "2ª Temporada",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 50,
                      child: FlatButton(
                        onPressed: () {
                          FlutterYoutube.playYoutubeVideoByUrl(
                              autoPlay: true,
                              backgroundColor: Colors.black,
                              apiKey: "API_KEY_HERE",
                              videoUrl: url);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                            Text(
                              "ASSISTIR TRAILER",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color(0xFFb5050e)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a consequat ligula, eget tristique turpis. Duis a neque et quam finibus fringilla. Aliquam mattis libero nulla. Curabitur erat augue, laoreet ut enim in, placerat pretium nibh. Nulla nec consectetur orci, eu sagittis ex.",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                      style: TextStyle(color: Colors.white54, fontSize: 14),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.add_circle_outline,
                              color: Colors.white,
                              size: 25,
                            ),
                            Text(
                              "Add",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 14),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.thumb_up,
                              color: Colors.white,
                              size: 25,
                            ),
                            Text(
                              "Curtir",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 14),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 25,
                            ),
                            Text(
                              "Compart.",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  right: 15,
                  top: 15,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.close,
                      color: Color(0xFFb5050e),
                      size: 30,
                    ),
                  ))
            ],
          ),
          Container(
            color: Colors.black,
            height: 100,
          )
        ],
      ),
    );
  }
}
