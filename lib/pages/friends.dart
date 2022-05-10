import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

Widget Friends() {
  return Expanded(
    child: Container(
      // color: Colors.grey,
      child: Column(
        children: <Widget>[
          // Align(
          //   alignment: Alignment.centerRight,
          //   child: FlatButton(
          //     height: 20.0,
          //     padding: EdgeInsets.all(0.0),
          //     child: Text(
          //       'PROFILE',
          //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
          //     ),
          //     onPressed: () {},
          //   ),
          // ),
          Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 100.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Positioned(
                      bottom: 5.0,
                      left: 25,
                      child: Container(
                        width: 50.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: Center(
                            child: Text(
                          'HOST',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Text(
                  'Selena Gomej',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  '@gomejsi',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[600],
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              // height: 150.0,
              margin: EdgeInsets.only(right: 20.0, left: 20.0, top: 20.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'See Who are Going',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 11.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 280.0,
                    // color: Colors.grey,
                    child: ListView(
                      // scrollDirection: Axis.vertical,
                      children: [
                        FriendsListItem(
                          name: 'Jenny Wilson',
                          userName: 'wilsonjenny',
                          state: true,
                        ),
                        FriendsListItem(
                          name: 'Annette Black',
                          userName: 'blackannetted',
                          state: false,
                        ),
                        FriendsListItem(
                          name: 'Robert Fox',
                          userName: 'foxrobert',
                          state: true,
                        ),
                        FriendsListItem(
                          name: 'Esther Howard',
                          userName: 'howardesther',
                          state: true,
                        ),
                        // FriendsListItem(),
                        // FriendsListItem(),
                        // FriendsListItem(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

class FriendsListItem extends StatelessWidget {
  const FriendsListItem({
    Key? key,
    required this.name,
    required this.userName,
    required this.state,
  }) : super(key: key);
  final String name;
  final String userName;
  final bool state;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      margin: EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 65.0,
            width: 50.0,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                '@${userName}',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[600],
                  fontSize: 11.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'SEND REMINDER',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 10.0,
                  letterSpacing: 1.0,
                ),
              ),
              SizedBox(height: 5.0),
            ],
          ),
          SizedBox(width: 50.0),
          Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                  color: Color.fromARGB(255, 224, 224, 224), width: 1.0),
            ),
            child: Icon(
              state ? Icons.check : Icons.clear,
              size: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
