import "package:flutter/material.dart";

class ProfileWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text("my Profile"),
          actions: [
            Text("logo"),
            Text("logo"),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
                "https://www.shareicon.net/data/2016/08/05/806962_user_512x512.png"),
            Text(
              "Iti Aswan",
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            Text("Flutter Development"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook),
                Icon(Icons.mail),
                Icon(Icons.map),
              ],
            )
          ],
        ),
      ),
    );
  }
}
