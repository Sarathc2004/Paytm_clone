import 'package:paytm1/view/balancescreen/balance.dart';
import 'package:paytm1/view/paytmwalletscreen/paytmwalllet.dart';
import 'package:paytm1/view/personalloanscreen/personalloan.dart';
import 'package:paytm1/view/scannerscreen/scanner.dart';
import 'package:paytm1/view/tobankaccscreen/tobankacc.dart';
import 'package:paytm1/view/tomobilescreen/tomobile.dart';
import 'package:paytm1/view/toselfscreen/toselfscreen.dart';

class database {
  static List transferimagelist = [
    "assets/images/Screenshot 2023-11-07 104236.png",
    "assets/images/book.png",
    "assets/images/image 10.png",
    "assets/images/image 9.png"
  ];
  static List transfertextlist = [
    "  Scan & Pay",
    "   To Mobile",
    "      To Self",
    " To bank A/c"
  ];
  static List balanceimagelist = [
    "assets/images/image 15.png",
    "assets/images/Group 3.png",
    "assets/images/image 14.png"
  ];
  static List balancetextlist = [
    "Balance & History",
    "Personal Loan",
    "Paytm Wallet"
  ];
  static List rechargeimagelist = [
    "assets/images/image 19.png",
    "assets/images/image 20.png",
    "assets/images/image 21.png",
    "assets/images/image 22.png",
    "assets/images/image 23.png",
    "assets/images/image 24.png",
    "assets/images/image 25.png"
  ];
  static List rechargetextlist = [
    "Mobile Recharge",
    "Rent Via Credit card",
    "DTH Recharge",
    "Electricity Bill",
    "Credit Card Payment",
    "Mobile Postpaid",
    "Book Gas Cylinder"
  ];
  static List transferpagelist = [
    Scannerscreen(),
    tomobilescreen(),
    toselfscreen(),
    tobankaccscreen()
  ];
  static List balancepagelist = [
    balancescreen(),
    personalscreen(),
    paytmwalletscreen()
  ];
  static List loansimagelist = [
    "assets/images/image 13.png",
    "assets/images/Group 3.png",
    "assets/images/Screenshot 2023-11-08 222940.png",
    "assets/images/Screenshot 2023-11-08 223335.png"
  ];
  static List loanstextlist = [
    "Paytm Postpaid",
    "Personal    Loan",
    "Free Credit Score",
    "EMI Calculator"
  ];
  static List investimagelist = [
    "assets/images/image 14 (1).png",
    "assets/images/image 15 (1).png",
    "assets/images/Screenshot 2023-11-09 101558.png",
    "assets/images/image 26.png"
  ];
  static List investtextlist = [
    "Open Demat Account",
    "Invest with ₹500",
    "Paytm Stocks",
    "Mutual Funds"
  ];

  static List insurancelist = [
    "Bike Insurance",
    "Car Insurance",
    "Health Insurance",
    "Accidental Insurance",
    "Hospital Cash",
  ];
  static List insuranceimagelist = [
    "assets/images/image 19 (1).png",
    "assets/images/image 20 (1).png",
    "assets/images/image 21 (1).png",
    "assets/images/image 22 (1).png",
    "assets/images/image 23 (1).png",
  ];
}
