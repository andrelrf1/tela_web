import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'action_button.dart';

class Desktop extends StatelessWidget {
  final ScrollController _ctrl = ScrollController();

  String path(String path) => kIsWeb ? 'assets/$path' : path;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(left: 7.0),
          child: Text(
            'Shelter',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
        ),
        actions: [
          ActionButton(title: 'Shop'),
          SizedBox(width: 30.0),
          ActionButton(title: 'Places'),
          SizedBox(width: 30.0),
          ActionButton(title: 'Route Construction'),
          SizedBox(width: 30.0),
          ActionButton(title: 'Blog'),
          SizedBox(width: 30.0),
          ActionButton(title: 'About Us'),
          SizedBox(width: 80.0),
        ],
      ),
      body: Container(
        color: Colors.grey[50],
        child: Padding(
          padding: const EdgeInsets.only(left: 100.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60.0),
                topLeft: Radius.circular(60.0),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60.0),
                bottomLeft: Radius.circular(60.0),
              ),
              child: ListView(
                controller: _ctrl,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: (width - width * 0.052) / 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 45.0,
                            vertical: 60.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Outstanding Range of Activities to Enjoy',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 80.0,
                                ),
                              ),
                              Container(
                                width: 300,
                                child: Text(
                                  'With so much to see and do in Iceland, it can be hard to choose an activity. Our diverse selection includes hiking, caving, glacier walks, ice climbing, mountain climbing, hunting for the Northern Lights and more!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: width - width * 0.052,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('background.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60.0),
                            topLeft: Radius.circular(60.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
