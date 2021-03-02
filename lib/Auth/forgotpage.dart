import 'package:flutter/material.dart';
import 'package:otp_screen/otp_screen.dart';

bool _showPassword = false;

class forgopage extends StatefulWidget {
  @override
  _forgopageState createState() => _forgopageState();
}

class _forgopageState extends State<forgopage> {
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
                    margin: EdgeInsets.only(top: 90),
                    child: Center(
                      child: Text(
                        "Forgot Page",
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
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
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
                                  hintText: 'Enter the Username',
                                  prefixIcon: Icon(
                                    Icons.person,
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
                        child: GestureDetector(
                      onTap: () {
                        print("userpage");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => otppage()),
                        );
                      },
                      child: Text("Submit",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class otppage extends StatefulWidget {
  @override
  _otppageState createState() => _otppageState();
}

void moveToNextScreen(context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => conFormpage()));
}

class _otppageState extends State<otppage> {
  Future<String> validateOtp(String otp) async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (otp == "1234") {
      return null;
    } else {
      return "The entered Otp is wrong";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OtpScreen.withGradientBackground(
        topColor: Colors.orangeAccent,
        bottomColor: Colors.grey,
        otpLength: 4,
        validateOtp: validateOtp,
        routeCallback: moveToNextScreen,
        themeColor: Colors.white,
        titleColor: Colors.white,
        title: "Phone Number Verification",
        subTitle: "Enter the code sent to \n +919876543210",
      ),
    );
  }
}

class conFormpage extends StatefulWidget {
  @override
  _conFormpageState createState() => _conFormpageState();
}

class _conFormpageState extends State<conFormpage> {
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
                    margin: EdgeInsets.only(top: 90),
                    child: Center(
                      child: Text(
                        "Reset Page",
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
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
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
                                  hintText: 'New password',
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.orange,
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _showPassword = !_showPassword;
                                      });
                                    },
                                    child: Icon(
                                      _showPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                  )),
                              obscureText: !_showPassword,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
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
                                  hintText: 'conform password',
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.orange,
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _showPassword = !_showPassword;
                                      });
                                    },
                                    child: Icon(
                                      _showPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                  )),
                              obscureText: !_showPassword,
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
                        child: GestureDetector(
                      onTap: () {
                        print("userpage");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => otppage()),
                        );
                      },
                      child: Text("Submit",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
