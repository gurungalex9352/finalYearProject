import 'package:flutter/material.dart';

class BookingForm extends StatelessWidget {
  BookingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Booking Details', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          leading: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Form(
                    child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Name',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              )),
                          SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Name",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 12),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Room Type',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                )),
                            SizedBox(height: 5),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Room Type",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5))),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 12),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Check-In-Date',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                )),
                            SizedBox(height: 5),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Check-In-Date",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5))),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 12),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Check-Out-Date',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                )),
                            SizedBox(height: 5),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Check-Out-Date",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5))),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 12),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'No. of Guests',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                )),
                            SizedBox(height: 5),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "No. of Guests",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5))),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 12),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Room Rate',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                )),
                            SizedBox(height: 5),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Room Rate",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5))),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Payment Method',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      RadioListTile(
                        title: Text("Khalti"),
                        value: "male",
                        groupValue: "male",
                        onChanged: (value) {
                          // setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      SizedBox(
                          height: 55,
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.blue)),
                              child: Text(
                                "Book Now",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18),
                              )))
                    ],
                  ),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
