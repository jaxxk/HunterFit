import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Run HunterFit
void main() {
  runApp(const HunterFit());
}

class HunterFit extends StatelessWidget {
  const HunterFit({Key? key}) : super(key: key);

  // This widget is the root of the HunterFit application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HunterFit',
      theme: ThemeData(),
      home: const LoginPage(),
    );
  }
}

// LoginPage is the first screen a user will see upon launching the system
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF47ABD1),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(height: 150),
                  // HunterFit logo
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset("assets/logo-hunter-fit.svg"),
                  ),
                  const SizedBox(height: 30),
                  // Container for username and password
                  Container(
                      width: 268,
                      height: 103,
                      decoration: const BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color : Color.fromRGBO(255, 255, 255, 1),
                      )
                  ),
                  const SizedBox(height: 30),
                  // Log in button
                  SizedBox(
                      width: 268,
                      height: 42,
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 268,
                                    height: 42,
                                    decoration: const BoxDecoration(
                                      borderRadius : BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      color : Color.fromRGBO(255, 255, 255, 0.20000000298023224),
                                    )
                                )
                            ),
                            const Positioned(
                                top: 10,
                                left: 109,
                                child: Text('Log in', textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Roboto',
                                    fontSize: 18,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                ),)
                            ),
                          ]
                      )
                  ),
                  const SizedBox(height: 30),
                  // Sign up button
                  const Text('Sign up', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
                ],
              )
            ],
          )
        )
    );
  }
}