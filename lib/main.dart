import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Color paleYellow = Color(0xFFFDF4E9),
    yellow = Color(0xFFFEC504),
    darkBlue = Color(0xFF303045),
    paleBlue = Color(0xFFD4E5F9),
    red = Colors.red,
    mediumYellow = Color(0xFFF8E9CF);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 35.0),
          child: Container(
            child: Column(
              children: [
                ViAppBar(),
                FirstCardBody(),
                MenuBody(),
                SecondCardBody(),
                BottomNavBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.grey[100],
            Colors.grey[200],
            Colors.grey[300],
            Colors.grey[400]
          ],
        ),
      ),
      padding: EdgeInsets.only(
        bottom: 10.0,
        right: 20.0,
        top: 5.0,
        left: 20,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 35.0,
          vertical: 10.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(
                children: [
                  Icon(
                    Icons.person_outline,
                    color: red,
                  ),
                  Text('My Account'),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Icon(
                    Icons.mobile_friendly_rounded,
                    color: red,
                  ),
                  Text('Recharge'),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Icon(
                    Icons.wallet_giftcard_outlined,
                    color: red,
                  ),
                  Text('Vi Tuesday'),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Icon(
                    Icons.menu,
                    color: red,
                  ),
                  Text('Menu'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 25.0,
            ),
            Container(
              height: 80,
              width: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.people_outline_rounded,
                    size: 40.0,
                  ),
                  Text(
                    'Recharge\nfor others',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Container(
              height: 80,
              width: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.play_circle_outline_outlined,
                    size: 40.0,
                  ),
                  Text(
                    'Vi Movies\n   & TV',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Container(
              height: 80,
              width: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.mobile_friendly,
                    size: 36.0,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Upgrade to\n Postpade',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Container(
              height: 80,
              width: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.music_note_outlined,
                    size: 40.0,
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Text(
                    'Callertunes',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Container(
              height: 80,
              width: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.support_agent_outlined,
                    size: 40.0,
                  ),
                  Text(
                    ' Help &\nSupport',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Container(
              height: 80,
              width: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.mobile_screen_share,
                    size: 40.0,
                  ),
                  Text(
                    ' International\n    Roaming',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 25.0,
            ),
          ],
        ),
      ),
    );
  }
}

class ViAppBar extends StatefulWidget {
  @override
  _ViAppBarState createState() => _ViAppBarState();
}

class _ViAppBarState extends State<ViAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 25,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Aquibe',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                '8606913096',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            width: 8.0,
          ),
          Transform.rotate(
            angle: 1.6,
            child: Container(
              decoration: BoxDecoration(
                color: paleYellow,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(
                  Icons.play_arrow_rounded,
                  size: 45.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondCardBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            color: darkBlue,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Image.network(
            'https://www.myvi.in/content/dam/vodafoneideadigital/onlinerecharge/data-rollover-desktop.png',
          ),
        ),
      ),
    );
  }
}

class FirstCardBody extends StatefulWidget {
  @override
  _FirstCardBodyState createState() => _FirstCardBodyState();
}

class _FirstCardBodyState extends State<FirstCardBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 25.0,
        bottom: 15.0,
        left: 25,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: paleYellow,
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.only(left: 18.0, top: 25.0),
              height: 380.0,
              width: 300.0,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '4.9',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'GB',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  'Left of 5.4GB/day',
                                  style: TextStyle(fontSize: 14.0),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 14.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Truly',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Unlimited calls',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: mediumYellow,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30.0),
                                  topLeft: Radius.circular(30.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Pack valid till 25 Feb,2021',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      ' recharge now',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: red,
                                    ),
                                    margin: EdgeInsets.only(right: 10.0),
                                    alignment: Alignment.center,
                                    height: 40.0,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'pack details',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        right: 18.0,
                        top: 12.0,
                        bottom: 15.0,
                      ),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: darkBlue,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              'Weekend data rollover\nis active now',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: yellow,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Icon(
                                Icons.chevron_right_outlined,
                                size: 40.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    flex: 3,
                  )
                ],
              ),
            ),
            SizedBox(
              width: 30.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: yellow,
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.all(22.0),
              height: 380.0,
              width: 300.0,
              child: Container(
                //second card
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'quick recharge',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.only(
                          bottom: 30.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: darkBlue,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                              ),
                              width: 120.0,
                              child: Text(
                                'Double data offer',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 80.0,
                                    width: 80.0,
                                    decoration: BoxDecoration(
                                      color: paleBlue,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '₹699',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 80.0,
                                      padding: EdgeInsets.only(
                                        left: 10.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: paleYellow,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  '4GB/Day',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  '84 Days',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Data',
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  'Validity',
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Divider(),
                                          Text(
                                            'Truly unlimited calls',
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.only(
                          bottom: 30.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: darkBlue,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                              ),
                              width: 120.0,
                              child: Text(
                                'Extra 5GB on App',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 80.0,
                                    width: 80.0,
                                    decoration: BoxDecoration(
                                      color: paleBlue,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '₹249',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 80.0,
                                      padding: EdgeInsets.only(
                                        left: 10.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: paleYellow,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  '1.5GB/Day',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  '28 Days',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Data',
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  'Validity',
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Divider(),
                                          Text(
                                            'Truly unlimited calls',
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
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
            ),
            SizedBox(
              width: 35.0,
            ),
          ],
        ),
      ),
    );
  }
}
