import 'package:flutter/material.dart';
import 'package:image_to_flutter/pages/food_items.dart';
import 'package:image_to_flutter/pages/friends.dart';
import 'package:image_to_flutter/pages/profile.dart';
import 'package:image_to_flutter/pages/total_bills.dart';
import 'pages/weare_going.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Home(),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  bool button_1 = true;
  bool button_2 = false;
  bool button_3 = false;
  bool button_4 = false;

  returnPage(context) {
    if (button_1 == true) {
      return WeAreGoing();
    } else if (button_2 == true) {
      return FoodItems();
    } else if (button_3 == true) {
      return TotalBill();
    } else if (button_4 == true) {
      return Friends();
    }
  }

  @override
  Widget build(BuildContext context) {
    final sizee = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        Container(
          // color: Colors.grey,
          width: 40.0,
          height: sizee.height * 0.90,
          padding: EdgeInsets.only(top: 0.0),
          child: Column(
            children: <Widget>[
              NavItemButton(
                sizee: sizee,
                title: 'WE\'RE GOING',
                state: button_1,
                onClick: () {
                  setState(() {
                    button_1 = true;
                    button_2 = false;
                    button_3 = false;
                    button_4 = false;
                  });
                },
              ),
              NavItemButton(
                sizee: sizee,
                title: 'FOOD ITEMS',
                state: button_2,
                onClick: () {
                  setState(() {
                    button_1 = false;
                    button_2 = true;
                    button_3 = false;
                    button_4 = false;
                  });
                },
              ),
              NavItemButton(
                sizee: sizee,
                title: 'TOTAL BILLS',
                state: button_3,
                onClick: () {
                  setState(() {
                    button_1 = false;
                    button_2 = false;
                    button_3 = true;
                    button_4 = false;
                  });
                },
              ),
              NavItemButton(
                sizee: sizee,
                title: 'FRIENDS',
                state: button_4,
                onClick: () {
                  setState(() {
                    button_1 = false;
                    button_2 = false;
                    button_3 = false;
                    button_4 = true;
                  });
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  height: 20.0,
                  padding: EdgeInsets.all(0.0),
                  child: Text(
                    'PROFILE',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
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
              returnPage(context)
            ],
          ),
        ),
      ],
    );
  }
}

class NavItemButton extends StatelessWidget {
  const NavItemButton({
    Key? key,
    required this.sizee,
    required this.title,
    required this.state,
    required this.onClick,
  }) : super(key: key);

  final Size sizee;
  final String title;
  final bool state;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    Color bgColor;
    Color textColor;
    Color borderColor;

    if (state == true) {
      bgColor = Colors.black;
      textColor = Colors.white;
      borderColor = Colors.black;
    } else {
      bgColor = Colors.white;
      textColor = Colors.black;
      borderColor = Color.fromARGB(255, 224, 224, 224);
    }
    return InkWell(
      onTap: onClick,
      child: Container(
        width: 40.0,
        height: sizee.height * 0.20,
        margin: EdgeInsets.only(bottom: 3.0),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(5.0),
            bottomRight: Radius.circular(5.0),
          ),
          border: Border.all(
            color: borderColor,
            width: 0.5,
          ),
        ),
        child: Center(
          child: RotatedBox(
            quarterTurns: 1,
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: textColor,
                fontSize: 11.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
