import 'package:flutter/material.dart';
import 'package:knownow/screens/register/register.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xFF71b8ff),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(50))),
                  child: Column(
                    children: [
                      Expanded(child: Image.asset("assets/images/welcome.png"))
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: const Color(0xFF71b8ff),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          const Spacer(),
                          const Text(
                            "Learning everything",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            "Learn with pleasure with\nus,where you are!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black54,
                              wordSpacing: 2.5,
                              height: 1.5,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(
                            flex: 3,
                          ),
                          //repleace sizebox with spacer
                          Row(
                            //button position
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MaterialButton(
                                height: 60,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                color: const Color(0xFFff6374),
                                onPressed: () {
                                  //home screen path
                                  Navigator.pushNamed(context, '/register');
                                },
                                child: const Text(
                                  "Get Started",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
