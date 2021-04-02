import 'package:flutter/material.dart';
import 'home.dart';

class DisplayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          // margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/backs.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          constraints: BoxConstraints.expand(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 100,
                      backgroundColor: Color(0xFFF8F8F8),
                      child: CircleAvatar(
                        radius: 90,
                        backgroundImage: AssetImage('images/todo.png'),
                      ),
                    ),
                  ],
                ),
              ),
              FlatButton(
                padding: EdgeInsets.all(20.0),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
                child: Expanded(
                  flex: 5,
                  child: Text(
                    'Go To Todo List App',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Quicksand',
                    ),
                  ),
                ),
                color: Color(0xFF15EBE4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
