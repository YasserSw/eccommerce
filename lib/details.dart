import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Center(child: Image.asset("images/psportal.jpg")),
            Center(
              child: Text(
                "SONY PLAYSTATION 5   ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
                child: Column(
              children: [
                Text(
                  "THE PORATBLE EDITION OF PS5 IS NOW AVAILABLE",
                  style: TextStyle(fontSize: 19),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "THE OFFICIAL PRICE STARTS WITH 500\$",
                    style: TextStyle(color: Colors.green, fontSize: 44),
                  ),
                ),
                Center(
                    child: MaterialButton(
                  onPressed: () {},
                  child: ListTile(
                    title: Text("add to cart"),
                    trailing: Icon(Icons.card_travel),
                  ),
                  color: Colors.deepOrangeAccent,
                  splashColor: Colors.amber,
                ))
              ],
            ))
          ]));
    });
  }
}
