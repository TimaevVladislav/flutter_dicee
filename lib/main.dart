import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var count = 5;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: () {
                    print("testing");
                  },
                  child: Image.asset("images/dice$count.png"))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    print({"testingg"});
                  },
                  child: Image.asset("images/dice$count.png")))
        ],
      ),
    );
  }
}
