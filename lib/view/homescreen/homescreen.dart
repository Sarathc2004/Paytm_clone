import 'dart:async';

import 'package:flutter/material.dart';
import 'package:paytm1/utils/colorconstant/colorconstant.dart';
import 'package:paytm1/view/paytmfront/paytmfront.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          height: 350,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Unlock Paytm",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Confirm your screen lock PIN, pattern or Password",
                    style: TextStyle(color: Colorconstant.primaryblack),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Center(
                    child: InkWell(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Paytmfront(),
                              ),
                              (route) => false);
                        },
                        child: Image.asset("assets/images/image 3.png")),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Touch the fingerprint Sensor",
                      style:
                          TextStyle(color: Color.fromARGB(255, 130, 151, 192)),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "USE PATTERN",
                      style: TextStyle(
                          color: Color.fromARGB(255, 9, 169, 75), fontSize: 18),
                    ),
                  )
                ]),
          ),
        ),
      );
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.primarywhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
            child: Image(
              image: AssetImage(
                "assets/images/image 1.png",
              ),
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Image.asset("assets/images/image 2.png"),
          SizedBox(
            height: 10,
          ),
          Text(
            "100% SECURE",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("PAYMENTS", style: TextStyle(fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
