import 'package:flutter/material.dart';
import 'package:flutter_netflix/screens/details_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Color blackColor = Theme.of(context).backgroundColor;

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              ),
            ),
            Container(
              height: 30,
              child: Image.asset("assets/logo.png"),
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Center(
                child: AspectRatio(
              aspectRatio: 3 / 2,
              child: Image.asset(
                "assets/sugestao.jpg",
                fit: BoxFit.cover,
              ),
            )),
            height: 274,
          ),
          Container(
              height: 45,
              color: Colors.black,
              child: Center(
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Assistir agora",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              )),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Minha Lista",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildMovieCard(context, "assets/f1.jpg", "f1", "https://www.youtube.com/watch?v=uPJVJBm9TPA"),
                _buildMovieCard(context, "assets/f2.jpg", "f2","https://www.youtube.com/watch?v=wL4a4MafSjQ"),
                _buildMovieCard(context, "assets/f3.jpg", "f3","https://www.youtube.com/watch?v=XadO4HoUNqs"),
                _buildMovieCard(context, "assets/f4.jpg", "f4","https://www.youtube.com/watch?v=lyWUdOOmgHg"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMovieCard(BuildContext context, String imgPath, String title, String url) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (c) => DetailsScreen(imgPath, title, url)));
      },
      child: Container(
        margin: EdgeInsets.all(3),
        width: 120,
        child: AspectRatio(
            aspectRatio: 9 / 9,
            child: Hero(
              tag: title,
              child: Image.asset(imgPath),
            )),
      ),
    );
  }
}
