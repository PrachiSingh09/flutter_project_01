import 'package:flutter/material.dart';

class SignUpType extends StatefulWidget {
  SignUpType({Key? key}) : super(key: key);

  @override
  State<SignUpType> createState() => _SignUpTypeState();
}

class _SignUpTypeState extends State<SignUpType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 250, 135, 4),
        body: Center(

            //will use column to arrange text and 2  widgets in a column.
            child: Column(
          children: [
            SizedBox(
              height: 50,
            ),

            //Text
            Text(
              'Signup Type',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(255, 7, 0, 0),
              ),
            ),
            SizedBox(
              height: 40,
            ),

            //For Bussinesses
            GestureDetector(
              onTap: () {
                print('Container clicked!');
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    //Container for image
                    Container(
                      width: 200,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 195, 137),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/home_img_1.png',
                        fit: BoxFit.contain,
                      ),
                    ),

                    //Container for button of get started
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        minimumSize: Size(230, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ),

            //For Delivery Direct
            GestureDetector(
              onTap: () {
                print('Container clicked!');
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    //Container for image
                    Container(
                      width: 200,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 195, 137),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/home_img_2.png',
                        fit: BoxFit.contain,
                      ),
                    ),

                    //Container for button of get started
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        minimumSize: Size(230, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )));
  }
}
