import 'package:booklet/views/screens/hotel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications, color: Colors.white,)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, color: Colors.white)),
          ],
        ),
      
        drawer: Drawer(
          child: Theme(
            data: Theme.of(context).copyWith(
            // Set the icon bar color to white
            primaryColor: Colors.white,
          ),
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 5, right: 5),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
                    child: Text('Profile', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
                  ),
                  
                  ClipOval(child: Container(
                    height: 110,
                    width: 112,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/h1.jpeg'), fit: BoxFit.cover)),
                  )),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Rajesh Hamal', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        SizedBox(height: 4),
                        Text('rajeshHamal23@gmail.com'),
                        SizedBox(height: 18),
                        SizedBox(height: 45,width: 200,child: ElevatedButton(onPressed: (){}, style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),child: Text('Edit Profile', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),))),
                        SizedBox(height: 8),
                        SizedBox(height: 45,width: 200,child: ElevatedButton(onPressed: (){}, style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.redAccent)),child: Text('Logout', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),)))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        
        
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_copy),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueAccent,
                      ),
                      child: Icon(Icons.filter_list_outlined,
                          color: Colors.white, size: 35),
                    ),
                  ],
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Recommended Hotel",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22))),
                ),
            
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
      
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => HotelPage()));
                          print("Redirect to the Hotel Page");
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Container(
                                height: 210,
                                width: 270,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/h1.jpeg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
                                height: 100,
                                width: 270,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                          Offset(0, 2), 
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          children: [
                                            Text(
                                              "Annapurna Resort",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22),
                                            ),
                                            Spacer(),
                                            Icon(Icons.star, color: Colors.amber),
                                            SizedBox(width: 2),
                                            Text(
                                              '5',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        )),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_rounded),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Lakeside, Pokhara",
                                          style: TextStyle(fontSize: 16),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Container(
                              height: 210,
                              width: 270,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/h1.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
                              height: 100,
                              width: 270,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset:
                                        Offset(0, 2), 
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Row(
                                        children: [
                                          Text(
                                            "Annapurna Resort",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22),
                                          ),
                                          Spacer(),
                                          Icon(Icons.star, color: Colors.amber),
                                          SizedBox(width: 2),
                                          Text(
                                            '5',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      )),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_rounded),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Lakeside, Pokhara",
                                        style: TextStyle(fontSize: 16),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Container(
                              height: 210,
                              width: 270,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/h1.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
                              height: 100,
                              width: 270,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset:
                                        Offset(0, 2), 
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Row(
                                        children: [
                                          Text(
                                            "Annapurna Resort",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22),
                                          ),
                                          Spacer(),
                                          Icon(Icons.star, color: Colors.amber),
                                          SizedBox(width: 2),
                                          Text(
                                            '5',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      )),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_rounded),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Lakeside, Pokhara",
                                        style: TextStyle(fontSize: 16),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    
                    ],
                  ),
                ),
              
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Explore Hotels",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22))),
                ),
            
                Column(
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Container(
                            height: 210,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/h1.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset:
                                      Offset(0, 2), 
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: [
                                        Text(
                                          "Annapurna Resort",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),
                                        ),
                                        Spacer(),
                                        Icon(Icons.star, color: Colors.amber),
                                        SizedBox(width: 2),
                                        Text(
                                          '5',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_rounded),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Lakeside, Pokhara",
                                      style: TextStyle(fontSize: 16),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                          
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Container(
                            height: 210,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/h1.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset:
                                      Offset(0, 2), 
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: [
                                        Text(
                                          "Annapurna Resort",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),
                                        ),
                                        Spacer(),
                                        Icon(Icons.star, color: Colors.amber),
                                        SizedBox(width: 2),
                                        Text(
                                          '5',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_rounded),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Lakeside, Pokhara",
                                      style: TextStyle(fontSize: 16),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                          
                  ],
                )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
