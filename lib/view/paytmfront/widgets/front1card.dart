import 'package:flutter/material.dart';
import 'package:paytm1/database/db.dart';
import 'package:paytm1/utils/colorconstant/colorconstant.dart';

class front1card extends StatelessWidget {
  const front1card(
      {super.key,
      required this.index,
      required this.height,
      required this.width,
      required this.image,
      required this.text,
      required this.fontsize,
      required this.page});
  final int index;
  final double height;
  final double width;
  final String image;
  final String text;
  final double fontsize;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            )),
        child: Container(
          height: height,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                    height: height / 2,
                    width: height / 2,
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: fontsize),
              )
            ],
          ),
        ),
      ),
    );
  }
}
