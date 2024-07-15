import 'package:flutter/material.dart';
import 'package:paytm1/database/db.dart';
import 'package:paytm1/utils/colorconstant/colorconstant.dart';
import 'package:paytm1/view/paytmfront/widgets/front1card.dart';

class Paytmfront extends StatelessWidget {
  const Paytmfront({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff00046B),
        onPressed: () {},
        child: Image.asset("assets/images/qr-code 1.png"),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Positioned(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      width: 60,
                    ),
                  )),
                  Positioned(
                      left: 5,
                      bottom: 5,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.red,
                        child: Text(
                          "SR",
                          style: TextStyle(
                              color: Colorconstant.primarywhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      )),
                  Positioned(
                      left: 40,
                      top: 30,
                      child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 245, 243, 243),
                          radius: 10,
                          child: Image.asset("assets/images/Group 2.png")))
                ],
              ),
              Center(
                  child: Image.asset("assets/images/image 1.png", width: 100)),
              SizedBox(
                width: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9),
                child: Image.asset(
                  "assets/images/search (2).png",
                  width: 35,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9),
                child: Image.asset(
                  "assets/images/message-square.png",
                  width: 40,
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 195,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Colorconstant.primaryborder),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "UPI Money Transfer  ₹",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          database.transferpagelist.length,
                          (index) => front1card(
                            index: index,
                            height: 77,
                            width: 77,
                            image: database.transferimagelist[index],
                            text: database.transfertextlist[index],
                            fontsize: 12,
                            page: database.transferpagelist[index],
                          ),
                        )),
                    SizedBox(
                      height: 19,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      color: Color(0x50B0CFEB),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "1 Refer = FLAT ₹100",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Image.asset(
                            "assets/images/image 11.png",
                          ),
                          SizedBox(
                            width: 190,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colorconstant.primaryborder,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Image.asset("assets/images/image 13.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 17,
                          ),
                          Text(
                            "Get upto ₹60,000 instant credit",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text("with Paytm Postpaid"),
                              Text(" at ZERO Fee")
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    OutlinedButton(onPressed: () {}, child: Text("Activate"))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 185,
                width: double.infinity,
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: Colorconstant.primaryborder),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                      database.balanceimagelist.length,
                      (index) => Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: front1card(
                              index: index,
                              height: 110,
                              width: 89,
                              image: database.balanceimagelist[index],
                              text: database.balancetextlist[index],
                              fontsize: 13.9,
                              page: database.balancepagelist[index],
                            ),
                          )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Colorconstant.primaryborder),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Recharge & Bill Payments",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: database.rechargeimagelist.length + 1,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemBuilder: (context, index) =>
                          index == database.rechargeimagelist.length
                              ? Column(
                                  children: [
                                    SizedBox(
                                      height: 12,
                                    ),
                                    CircleAvatar(
                                      radius: 17,
                                      backgroundColor: Color(0xff70CCE0),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colorconstant.primaryblack,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "view more",
                                      style: TextStyle(
                                          color: Colorconstant.primaryblack,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              : front1card(
                                  index: index,
                                  height: 70,
                                  width: 50,
                                  image: database.rechargeimagelist[index],
                                  text: database.rechargetextlist[index],
                                  fontsize: 12,
                                  page: Paytmfront()),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 185,
                width: double.infinity,
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: Colorconstant.primaryborder),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Loans & Credit Cards",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Instant Approvals",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                database.transferpagelist.length,
                                (index) => front1card(
                                  index: index,
                                  height: 87,
                                  width: 77,
                                  image: database.loansimagelist[index],
                                  text: database.loanstextlist[index],
                                  fontsize: 11,
                                  page: Paytmfront(),
                                ),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Colorconstant.primaryborder),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Invest & Trade In Stocks",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            database.investimagelist.length,
                            (index) => front1card(
                              index: index,
                              height: 77,
                              width: 77,
                              image: database.investimagelist[index],
                              text: database.investtextlist[index],
                              fontsize: 10,
                              page: Paytmfront(),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Colorconstant.primaryborder),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Insurance",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: database.insurancelist.length + 1,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemBuilder: (context, index) =>
                          index == database.insuranceimagelist.length
                              ? Column(
                                  children: [
                                    SizedBox(
                                      height: 12,
                                    ),
                                    CircleAvatar(
                                      radius: 17,
                                      backgroundColor: Color(0xff70CCE0),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colorconstant.primaryblack,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "view more",
                                      style: TextStyle(
                                          color: Colorconstant.primaryblack,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              : front1card(
                                  index: index,
                                  height: 70,
                                  width: 50,
                                  image: database.insuranceimagelist[index],
                                  text: database.insurancelist[index],
                                  fontsize: 12,
                                  page: Paytmfront()),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
