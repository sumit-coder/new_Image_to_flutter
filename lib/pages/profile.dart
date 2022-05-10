import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    height: 20.0,
                    padding: EdgeInsets.all(0.0),
                    child: Text(
                      'PROFILE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12.0),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return Profile();
                      //     },
                      //   ),
                      // );
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    },
                  ),
                ),
                Container(
                  height: 235.0,
                  // color: Colors.red,
                  margin: EdgeInsets.only(right: 20.0, left: 20.0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        // margin: EdgeInsets.only(right: 20.0, left: 20.0),
                        height: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      Positioned(
                        left: 20.0,
                        bottom: 0.0,
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(250, 250, 250, 1),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Container(
                            // margin: EdgeInsets.only(right: 20.0, left: 20.0),
                            height: 100.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 105.0,
                        bottom: 10.0,
                        child: Text(
                          '@annettedesign',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400],
                            fontSize: 12.0,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 20.0, top: 10.0),
                    padding: EdgeInsets.only(left: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Annette Black',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Freelance Photographer',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[400],
                            fontSize: 13.0,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30.0, top: 30.0),
                  // color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'COMING EVENT',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                          fontSize: 10.0,
                          letterSpacing: 1.5,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 45.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(22.5),
                              ),
                            ),
                            SizedBox(width: 20.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Colors Teste',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 19.0,
                                    // letterSpacing: 1.5,
                                  ),
                                ),
                                SizedBox(height: 4.0),
                                Text(
                                  '1901 Thornridge Cir. Shilo, USA',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[700],
                                    fontSize: 11.0,
                                  ),
                                ),
                                SizedBox(height: 7.0),
                                Text(
                                  '8PM SHARP',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[700],
                                    fontSize: 11.0,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 20.0),
                  padding: EdgeInsets.only(left: 15.0, right: 7.0),
                  width: 500.0,
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                        color: Color.fromARGB(255, 224, 224, 224), width: 0.5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Set Reminder',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 13.0,
                        ),
                      ),
                      Container(
                        height: 30,
                        padding: EdgeInsets.only(left: 10.0, right: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Add to Calender',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 11.0,
                              ),
                            ),
                            Icon(
                              Icons.arrow_right,
                              size: 17,
                            )
                          ],
                        ),
                      )
                    ],
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
