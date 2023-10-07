import 'package:flutter/material.dart';
import 'package:parcel_eye_new_app/pages/dd_shipment_details_seller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff622F74),
      ),
      home: ddShipmentDetailsSeller(),
    );
  }
}
