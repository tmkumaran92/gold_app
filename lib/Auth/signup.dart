import 'package:flutter/material.dart';
import 'package:gold_app/Auth/login.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/gold.png'), fit: BoxFit.cover)),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      child: Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Container(
              //   margin: EdgeInsets.only(bottom: 60),
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          //margin: EdgeInsets.only(bottom: 50),
                          child: new Theme(
                            data: new ThemeData(
                              primaryColor: Colors.orange,
                              primaryColorDark: Colors.amber,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.teal)),
                                  hintText: 'Enter the Username',
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.orange,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: new Theme(
                            data: new ThemeData(
                              primaryColor: Colors.orange,
                              primaryColorDark: Colors.amber,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.teal)),
                                  hintText: 'Phone Number',
                                  prefixIcon: Icon(
                                    Icons.phone,
                                    color: Colors.orange,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: new Theme(
                            data: new ThemeData(
                              primaryColor: Colors.orange,
                              primaryColorDark: Colors.amber,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.teal)),
                                  hintText: 'Enter the Mail',
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.orange,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: new Theme(
                            data: new ThemeData(
                              primaryColor: Colors.orange,
                              primaryColorDark: Colors.amber,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.teal)),
                                  hintText: 'Password',
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.orange,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(colors: [
                          Colors.amber,
                          Colors.orangeAccent,
                        ])),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Loginpage()),
                          );
                        },
                        child: Text("Already you create account ?",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold)),
                      )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
