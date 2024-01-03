import 'package:booklet/views/screens/home.dart';
import 'package:flutter/material.dart';

class HotelPage extends StatefulWidget {
  HotelPage({Key? key}) : super(key: key);

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  String selectedTab = 'rooms';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(leading: Icon(Icons.arrow_back)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 1000,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(alignment: Alignment.topLeft,child: InkWell(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));} ,child: Icon(Icons.arrow_back, color: Colors.white, size: 32,))),
                      ),
                      height: 280,
                      width: 500,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/h1.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 240,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 55, bottom: 5, left: 24, right: 24),
                              child: Column(
                                children: [
                                  Container(
                                    // Hotel Details Container
                                    height: 180,
                                    width: double.infinity,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Annapurna Resort",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 26),
                                            ),
                                            Spacer(),
                                            Icon(Icons.star,
                                                color: Colors.amber),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "4/5",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on_rounded),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Lakeside, Pokhara",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                            "A premium accommodation option typically larger and more elegantly appointed than standard rooms, deluxe rooms often feature upscale furnishings, amenities, and additional services."),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                selectedTab = 'rooms';
                                              });
                                              print('Rooms Button Pressed');
                                            },
                                            child: Container(
                                              padding: EdgeInsets.all(16),
                                              decoration: BoxDecoration(
                                                color: selectedTab == 'rooms'
                                                    ? Colors.blue
                                                    : Color.fromARGB(
                                                            255, 10, 10, 10)
                                                        .withOpacity(0.3),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft: Radius.zero,
                                                  bottomRight: Radius.zero,
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Rooms',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              // Handle button press
                                              setState(() {
                                                selectedTab = 'reviews';
                                              });
                                              print('Review Button Pressed');
                                            },
                                            child: Container(
                                              padding: EdgeInsets.all(16),
                                              decoration: BoxDecoration(
                                                color: selectedTab == 'reviews'
                                                    ? Colors.blue
                                                    : Color.fromARGB(
                                                            255, 10, 10, 10)
                                                        .withOpacity(0.3),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.zero,
                                                  bottomRight: Radius.zero,
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Reviews',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    height: 432,
                                    width: double.infinity,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: selectedTab == 'rooms'
                                          ? _roomsDetails()
                                          : _reviewsDetails(),
                                    ),
                                  ),
                                ],
                              ),
                              // Padding End
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
    );
  }

  Widget _roomsDetails() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/rooms/doubleBed.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  padding: EdgeInsets.all(6),
                  height: 180,
                  width: double.infinity,
                ),
                Container(
                  height: 80,
                  color: Color.fromARGB(255, 220, 220, 220).withOpacity(0.3),
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Deluxe Room",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28)),
                          Spacer(),
                          Container(
                            height: 28,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.blueAccent,
                            ),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '3',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )),
                          )
                        ],
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Rs 32000/-',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/rooms/doubleBed.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  padding: EdgeInsets.all(6),
                  height: 180,
                  width: double.infinity,
                ),
                Container(
                  height: 80,
                  color: Color.fromARGB(255, 220, 220, 220).withOpacity(0.3),
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Deluxe Room",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28)),
                          Spacer(),
                          Container(
                            height: 28,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.blueAccent,
                            ),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '3',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )),
                          )
                        ],
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Rs 32000/-',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _reviewsDetails() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 6, bottom: 6),
            child: Container(
              padding: EdgeInsets.all(10),
              height: 175,
              width: double.infinity,
              color: Color.fromARGB(255, 220, 220, 220).withOpacity(0.3),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/rooms/doubleBed.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 230,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "John Smith",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4/5',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                            'A premium accommodation option typically larger and more elegantly appointed than standard rooms with amenities, and additional services.')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6, bottom: 6),
            child: Container(
              padding: EdgeInsets.all(10),
              height: 175,
              width: double.infinity,
              color: Color.fromARGB(255, 220, 220, 220).withOpacity(0.3),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/rooms/doubleBed.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 230,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "John Smith",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4/5',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                            'A premium accommodation option typically larger and more elegantly appointed than standard rooms with amenities, and additional services.')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6, bottom: 6),
            child: Container(
              padding: EdgeInsets.all(10),
              height: 175,
              width: double.infinity,
              color: Color.fromARGB(255, 220, 220, 220).withOpacity(0.3),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/rooms/doubleBed.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 230,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "John Smith",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4/5',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                            'A premium accommodation option typically larger and more elegantly appointed than standard rooms with amenities, and additional services.')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
