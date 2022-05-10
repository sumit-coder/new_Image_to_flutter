import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

Widget TotalBill() {
  return Expanded(
    child: Container(
      // color: Colors.grey,
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Table - 12',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  '20:02:27 Wednesday 2020',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.0,
                    fontWeight: FontWeight.normal,
                    wordSpacing: 2.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
            child: Column(
              children: <Widget>[
                CardItems(name: 'Stir Fried Veg', price: 2.75, quantity: 3),
                CardItems(name: 'Turkish Tea', price: 1.25, quantity: 2),
                CardItems(name: 'Mise Food', price: 3.75, quantity: 5),
                CardItems(name: 'Chateau Emilion', price: 1.45, quantity: 5),
                CardItems(
                    name: 'Gallipoli Spcl Grill', price: 3.55, quantity: 4),
                CardItems(name: 'Baklava', price: 1.45, quantity: 5),
                CardItems(
                    name: 'Brownie & Ice cream', price: 1.45, quantity: 5),
                // Divider(height: 1.0),
                SizedBox(height: 10.0),
              ],
            ),
          ),
          Container(
            // color: Colors.grey,
            margin: EdgeInsets.only(left: 25.0, right: 30.0),
            width: 1000,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Sub-Total',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2.0,
                      ),
                    ),
                    Text(
                      '\$127',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '10% Tax',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal,
                        wordSpacing: 2.0,
                      ),
                    ),
                    Text(
                      '\$12.70',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal,
                        wordSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                Divider(height: 1.0),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Grand Total',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2.0,
                      ),
                    ),
                    Text(
                      '\$139.70',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0, left: 25.0, right: 25.0),
            width: 1000.0,
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Split the bill',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 40.0,
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 250, 250, 1),
                    borderRadius: BorderRadius.circular(8.0),
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
                              bottom: 2.0,
                              child: Container(
                                width: 21.0,
                                height: 21.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[400],
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
                        // width: 25.0,
                        padding: EdgeInsets.only(left: 5.0, right: 0.0),
                        height: 25.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                              width: 0.8,
                              color: Color.fromARGB(255, 224, 224, 224)),
                        ),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Split and Pay',
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
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          // Container(
          //   child: Text(
          //     'Split and Pay',
          //     style: TextStyle(
          //       fontWeight: FontWeight.normal,
          //       color: Colors.black,
          //       fontSize: 11.0,
          //     ),
          //   ),
          // )
        ],
      ),
    ),
  );
}

class CardItems extends StatelessWidget {
  const CardItems({
    Key? key,
    required this.name,
    required this.quantity,
    required this.price,
  }) : super(key: key);
  final String name;
  final int quantity;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 7.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          Text(
            '$quantity x \$$price ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
              wordSpacing: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
