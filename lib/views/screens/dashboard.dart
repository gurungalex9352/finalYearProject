// import 'package:booklet/views/credentials/register.dart';
import 'package:booklet/views/credentials/register.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
          actions: <Widget>[
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
            // IconButton(onPressed: (){}, icon: Icon(Icons.)),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Alex Gurung',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(5),
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: 95,
                        width: 95,
                      ),
                      // Text("Booklet", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold, color: Colors.white),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Dear User, ",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                          Text(
                            "Welcome to Booking Application",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 28,
                        child: Center(
                            child: Text(
                          "Connect with us !",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: 145,
                                height: 38,
                                child: ElevatedButton(
                                  onPressed: () {
                                    print("Log In Button");
                                  },
                                  child: Text("Log In",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold)),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromRGBO(16, 120, 33, 0.703)),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                                width: 145,
                                height: 38,
                                child: ElevatedButton(
                                    onPressed: () {
                                      print("Sign In Button");
                                    },
                                    child: Text("Sign In",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)))),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Learn more",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 210,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 6.0, // soften the shadow
                          spreadRadius: 3.0, //extend the shadow
                          offset: Offset(
                            5.0, // Move to right 5  horizontally
                            5.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(16)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 180,
                          width: 155,
                          child: CircularPercentIndicator(
                            radius: 70,
                            animation: true,
                            animationDuration: 2000,
                            lineWidth: 20,
                            percent: 0.8,
                            progressColor: Colors.blue,
                            circularStrokeCap: CircularStrokeCap.round,
                            backgroundColor: Colors.redAccent,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 200,
                          width: 190,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "Overall",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 150,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: Container(
                                        height: 18,
                                        width: 18,
                                        color: Colors.blue,
                                      ),
                                      title: Text(
                                        "80%",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text("Users",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    ListTile(
                                      leading: Container(
                                        height: 18,
                                        width: 18,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        "20%",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text("Admin",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _gmailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  // Simulate user authentication (replace with actual authentication logic)
  Future<bool> _authenticateUser() async {
    // Simulate a successful login for demonstration purposes
    // In a real application, replace this with actual authentication logic
    await Future.delayed(Duration(seconds: 2)); // Simulate network delay
    return true; // Return true to indicate successful authentication
  }

  // Function to handle login and navigation
  void _handleLoginAndNavigation(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      // Show a loading indicator while authenticating
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      );

      // Simulate user authentication (replace with actual authentication logic)
      bool isAuthenticated = await _authenticateUser();

      // Close the loading indicator dialog
      Navigator.of(context).pop();

      if (isAuthenticated) {
        // Navigate to the HomeScreen if authentication is successful
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      } else {
        // Show an error message if authentication fails (replace with your error handling)
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Login failed. Please check your credentials.'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 101, 192),
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  // color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 37, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          controller: _gmailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your credential";
                            }
                            if (!value.contains('@')) {
                              return "Please enter a valid credential";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Gmail',
                            prefixIcon: Icon(Icons.mail),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          controller: _passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your credential";
                            }
                            if (value.length < 8 || value.length != 8) {
                              return "Password must be of 8 characters";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.key),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 105,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {
                            _handleLoginAndNavigation(
                                context); // Call the login handler
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to the sign-up screen when the text is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Register()), // Replace with your sign-up screen
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Don't have an Account? SignUp",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    // Icon(Icons.facebook),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
