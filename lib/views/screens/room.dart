import 'package:booklet/views/screens/hotel.dart';
import 'package:flutter/material.dart';

class RoomPage extends StatelessWidget {
  RoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(alignment: Alignment.topLeft,child: InkWell(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => HotelPage()));} ,child: Icon(Icons.arrow_back, color: Colors.white, size: 32,))),
                      ),
                    height: 310,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/h1.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                  ),
                  Positioned(
                      top: 280,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 400,
                        width: double.infinity,
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
                                  top: 38, bottom: 5, left: 24, right: 24),
                              child: Column(
                                children: [
                                  Container(
                                    // Rooms Details Container
                                    height: 172,
                                    width: double.infinity,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Double Bedroom",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 26),
                                            ),
                                            Spacer(),
                                            Container(
                                              height: 32,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20))),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.person,
                                                      color: Colors.white,
                                                    ),
                                                    Text(
                                                      '2',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )
                                                  ]),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Rs" + " " + "3200",
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
                                  Padding(
                                    padding: EdgeInsets.only(top: 0, bottom: 8),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Our Services",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 26),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 5.0, left: 5.0),
                                        child: Container(
                                          height: 80,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                spreadRadius: 1,
                                                blurRadius: 3,
                                                offset: Offset(0, 2.5),
                                              ),
                                            ],
                                          ),
                                          child: Icon(Icons.wifi, size: 32),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 5.0, left: 5.0),
                                        child: Container(
                                          height: 80,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                spreadRadius: 1,
                                                blurRadius: 3,
                                                offset: Offset(0, 2.5),
                                              ),
                                            ],
                                          ),
                                          child:
                                              Icon(Icons.restaurant, size: 32),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 5.0, left: 5.0),
                                        child: Container(
                                          height: 80,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                spreadRadius: 1,
                                                blurRadius: 3,
                                                offset: Offset(0, 2.5),
                                              ),
                                            ],
                                          ),
                                          child: Icon(Icons.ac_unit, size: 32),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 5.0, left: 5.0),
                                        child: Container(
                                          height: 80,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                spreadRadius: 1,
                                                blurRadius: 3,
                                                offset: Offset(0, 2.5),
                                              ),
                                            ],
                                          ),
                                          child: Icon(
                                            Icons.tv,
                                            size: 32,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 14.0, bottom: 5),
                                      child: Text(
                                        "Other Rooms",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 26),
                                      ),
                                    ),
                                  ),

                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Container(
                                            height: 80,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/rooms/suiteRoom.jpeg'),
                                                  fit: BoxFit.cover),
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Container(
                                            height: 80,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/rooms/suiteRoom.jpeg'),
                                                  fit: BoxFit.cover),
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Container(
                                            height: 80,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/rooms/suiteRoom.jpeg'),
                                                  fit: BoxFit.cover),
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Container(
                                            height: 80,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/rooms/suiteRoom.jpeg'),
                                                  fit: BoxFit.cover),
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Button for Book Now
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 55,
                                      child: ElevatedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.blue),
                                          ),
                                          child: Text(
                                            'Book Now',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18, color: Colors.white),
                                          )),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
