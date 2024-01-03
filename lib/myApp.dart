// import 'package:booklet/views/credentials/login.dart';
// import 'package:booklet/views/screens/home.dart';
// import 'package:booklet/views/screens/hotel.dart';
import 'package:booklet/views/screens/bookingForm.dart';
// import 'package:booklet/views/screens/room.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookingForm(),
    );
  }
}