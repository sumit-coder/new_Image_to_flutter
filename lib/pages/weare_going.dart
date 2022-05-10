// import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget WeAreGoing() {
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
          //     onPressed: () {
          //       // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //       //   return Profile();
          //       // }));
          //     },
          //   ),
          // ),
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
            height: 200.0,
            width: 400.0,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Positioned(
                  right: 5.0,
                  top: 5.0,
                  child: IconButton(
                    alignment: Alignment.topRight,
                    icon: Icon(Icons.exit_to_app_outlined),
                    onPressed: () {},
                    color: Colors.white,
                    iconSize: 20.0,
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  left: 10.0,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                // Image.asset(
                //   'assets/chip.jpg',
                //   fit: BoxFit.cover,
                // ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Colors Taste',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25.0),
                ),
                SizedBox(height: 5.0),
                Text(
                  '1901 Thornridge Cir. Shilo, USA',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[600],
                      fontSize: 14.0),
                ),
              ],
            ),
          ),
          Container(
            // color: Colors.grey,
            margin: EdgeInsets.only(
                top: 20.0, right: 20.0, left: 20.0, bottom: 15.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Possible Meals Choice',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 13.0),
                    ),
                    Text(
                      'MORE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    mealsBox('Pancakes', 5),
                    mealsBox('Soup', 8),
                    mealsBox('Icecream', 10),
                  ],
                ),
              ],
            ),
          ),
          Container(
            // color: Colors.grey,
            margin: EdgeInsets.only(right: 20.0, left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Who are Going:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Container(
                  height: 40.0,
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 250, 250, 1),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                        width: 0.8, color: Color.fromARGB(255, 224, 224, 224)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 100.0,
                        // color: Colors.red,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: 25.0,
                              height: 25.0,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(12.5),
                                border: Border.all(
                                  width: 2.5,
                                  color: Color.fromRGBO(250, 250, 250, 1),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 15.0,
                              child: Container(
                                width: 25.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(12.5),
                                  border: Border.all(
                                    width: 2,
                                    color: Color.fromRGBO(250, 250, 250, 1),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 30.0,
                              child: Container(
                                width: 25.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(12.5),
                                  border: Border.all(
                                    width: 2,
                                    color: Color.fromRGBO(250, 250, 250, 1),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 45.0,
                              child: Container(
                                width: 24.0,
                                height: 24.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: BorderRadius.circular(12),
                                  // border: Border.all(
                                  //   width: 0,
                                  //   color: Colors.grey,
                                  // ),
                                ),
                                child: Center(
                                  child: Text(
                                    '+2',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 25.0,
                        height: 25.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(7.0),
                          border: Border.all(
                              width: 0.8,
                              color: Color.fromARGB(255, 224, 224, 224)),
                        ),
                        child: Icon(
                          Icons.arrow_right,
                          size: 15.0,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget mealsBox(title, price) {
  return Container(
    // color: Colors.grey,
    margin: EdgeInsets.only(right: 5.0),
    height: 110.0,
    width: 70.0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Stack(
          children: [
            Container(
              height: 90.0,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Positioned(
              left: 5.0,
              bottom: 5.0,
              child: Container(
                height: 20.0,
                width: 30.0,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    '\$ ${price}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.grey[600],
            fontSize: 12.0,
          ),
        ),
      ],
    ),
  );
}
