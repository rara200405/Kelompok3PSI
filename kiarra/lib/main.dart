import 'package:flutter/material.dart';
import 'package:kiarra/screens/SignUp_screens.dart';
import 'package:kiarra/screens/detailproduct_screens.dart';
import 'package:kiarra/screens/keranjang_Screens.dart';
import 'package:kiarra/screens/login_Screens.dart';
import 'package:kiarra/screens/menu_Screens.dart';
import 'package:kiarra/screens/notifikasi_Screens.dart';
import 'package:kiarra/screens/pembayaran_Screens.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seblak App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    //  home: LoginPage(),
     // home: SignUpPage(),
     // home: MenuPage(),
     // home: DetailproductScreens(),
     // home: CartPage(),
      home: PaymentPage(),
      //home: OrderConfirmationPage(),
    );
  }
}