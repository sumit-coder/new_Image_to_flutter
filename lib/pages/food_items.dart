import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

Widget FoodItems() {
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
            margin: EdgeInsets.only(left: 20.0, top: 20.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                mealsBox('Pancakes', 5),
                mealsBox('Soup', 8),
                // mealsBox('Icecream', 10),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                AddedItems(
                  title: 'Turkish Tea',
                  priceEach: 1.50,
                  countEach: 2,
                ),
                AddedItems(
                  title: 'Chateau Emilion',
                  priceEach: 1.45,
                  countEach: 5,
                ),
                AddedItems(
                  title: 'Bakava',
                  priceEach: 1.45,
                  countEach: 5,
                ),
                AddedItems(
                  title: 'Brownie & ice',
                  priceEach: 1.45,
                  countEach: 5,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 15.0, right: 20.0, bottom: 10.0),
              padding: EdgeInsets.only(right: 7.0, left: 10.0),
              height: 40.0,
              // width: 100.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  width: 0.5,
                  color: Color.fromARGB(255, 224, 224, 224),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Icon(
                        Icons.alarm,
                        size: 18,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        '7 Items added',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 14.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Text(
                    '\$123',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14.0),
                  ),
                  Container(
                    width: 27.0,
                    height: 27.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(7.0),
                      // border: Border.all(width: 0.8, color: Colors.grey[300]),
                    ),
                    child: Icon(
                      Icons.arrow_right,
                      size: 15.0,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

class AddedItems extends StatelessWidget {
  const AddedItems({
    Key? key,
    required this.title,
    this.priceEach,
    required this.countEach,
  }) : super(key: key);

  final String title;
  final dynamic priceEach;
  final int countEach;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16.0),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      '\$$priceEach each',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[600],
                          fontSize: 13.0),
                    ),
                  ],
                ),
                Container(
                  height: 35.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17.5),
                    border: Border.all(
                      width: 0.5,
                      color: Color.fromARGB(255, 224, 224, 224),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        size: 15.0,
                        color: Colors.grey,
                      ),
                      Text(
                        "$countEach",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 14.0,
                        ),
                      ),
                      Icon(
                        Icons.horizontal_rule,
                        size: 15.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget mealsBox(title, price) {
  return Container(
    // color: Colors.grey,
    margin: EdgeInsets.only(right: 10.0),
    height: 130.0,
    width: 90.0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Stack(
          children: [
            Container(
              height: 110.0,
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
            ),
            Positioned(
              bottom: 5.0,
              right: 5.0,
              child: Container(
                height: 60,
                width: 30.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.add,
                      size: 15.0,
                      color: Colors.grey,
                    ),
                    Text(
                      '1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14.0,
                      ),
                    ),
                    Icon(
                      Icons.horizontal_rule,
                      size: 15.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
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
