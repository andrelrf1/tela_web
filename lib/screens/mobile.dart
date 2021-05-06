import 'package:flutter/material.dart';
import 'action_button.dart';

class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(left: 7.0),
          child: Text(
            'Shelter',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
        ),
        centerTitle: true,
        bottom: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ActionButton(title: 'Shop'),
              SizedBox(width: 30.0),
              ActionButton(title: 'Places'),
              SizedBox(width: 30.0),
              ActionButton(title: 'Route Construction'),
              SizedBox(width: 30.0),
              ActionButton(title: 'Blog'),
              SizedBox(width: 30.0),
              ActionButton(title: 'About Us'),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[50],
      body: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60.0),
          topRight: Radius.circular(60.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60.0),
              topRight: Radius.circular(60.0),
            ),
          ),
          child: Container(
            color: Colors.grey[200],
            child: ListView(
              children: [
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Outstanding Range of Activities to Enjoy',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 60.0,
                          ),
                        ),
                        SizedBox(height: 100.0),
                        Container(
                          width: 300.0,
                          child: Text(
                            'With so much to see and do in Iceland, it can be hard to choose an activity. Our diverse selection includes hiking, caving, glacier walks, ice climbing, mountain climbing, hunting for the Northern Lights and more!',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 500.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage('background.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
