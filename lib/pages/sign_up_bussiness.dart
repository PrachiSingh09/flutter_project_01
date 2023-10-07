import 'package:flutter/material.dart';
import 'package:parcel_eye_new_app/components/my_textfield.dart';

class SignUpBussiness extends StatefulWidget {
  SignUpBussiness({Key? key}) : super(key: key);

  @override
  State<SignUpBussiness> createState() => _SignUpBussinessState();
}

class _SignUpBussinessState extends State<SignUpBussiness> {
  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 250, 135, 4),
        body: Center(
          //will use column to arrange text and sign up widget in a column.

          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                //Text
                Text(
                  'Welcome to parcel eye!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                //SignUp widget
                Center(
                  child: SingleChildScrollView(
                    child: Container(
                      width: 250,
                      height: 700,
                      padding: EdgeInsets.all(10),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //signup text
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'SignUp',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),

                          SizedBox(height: 6),

                          //welcome back text
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Welcome back you have been missed!',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),

                          SizedBox(height: 25),

                          //TextFields

                          //Bussiness Name textfield
                          MyTextField(
                            controller: usernameController,
                            hintText: 'Bussiness Name',
                            obscureText: false,
                          ),

                          const SizedBox(height: 10),

                          //GSTN textfield
                          MyTextField(
                            controller: usernameController,
                            hintText: 'GSTIN',
                            obscureText: false,
                          ),

                          const SizedBox(height: 10),

                          //Owner Name textfield
                          MyTextField(
                            controller: usernameController,
                            hintText: 'Owner Name',
                            obscureText: false,
                          ),

                          const SizedBox(height: 10),

                          //Official Email Address textfild
                          MyTextField(
                            controller: usernameController,
                            hintText: 'Official Email Address',
                            obscureText: false,
                          ),

                          const SizedBox(height: 10),

                          //password textfield
                          MyTextField(
                            controller: passwordController,
                            hintText: 'Password',
                            obscureText: true,
                          ),

                          const SizedBox(height: 10),

                          //Official Contact Number textfild
                          MyTextField(
                            controller: usernameController,
                            hintText: 'Official Contact No.',
                            obscureText: false,
                          ),

                          const SizedBox(height: 10),

                          //Shop No. textfild
                          MyTextField(
                            controller: usernameController,
                            hintText: 'Shop No.',
                            obscureText: false,
                          ),

                          const SizedBox(height: 10),

                          //Street/Block Number textfild
                          MyTextField(
                            controller: usernameController,
                            hintText: 'Street/Block Number',
                            obscureText: false,
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          //Pincode
                          Container(
                            padding: EdgeInsets.only(left: 5),
                            width: 105,
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Pincode',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey.shade400),
                                  ),
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintStyle:
                                      TextStyle(color: Colors.grey[500])),
                            ),
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          //row=state + city
                          Row(
                              //State
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  width: 105,
                                  height: 40,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'State',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey.shade400),
                                        ),
                                        fillColor:
                                            Color.fromARGB(255, 255, 255, 255),
                                        filled: true,
                                        hintStyle:
                                            TextStyle(color: Colors.grey[500])),
                                  ),
                                ),

                                SizedBox(
                                  width: 10,
                                ),

                                //City
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  width: 105,
                                  height: 40,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'City',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey.shade400),
                                        ),
                                        fillColor:
                                            Color.fromARGB(255, 255, 255, 255),
                                        filled: true,
                                        hintStyle:
                                            TextStyle(color: Colors.grey[500])),
                                  ),
                                ),
                              ]),

                          SizedBox(height: 35),

                          //Sign up button

                          Container(
                            height: 35,
                            width: 259,
                            child: ElevatedButton(
                              onPressed: () {
                                // Sign up button functionality
                              },
                              child: Center(
                                  child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              )),
                            ),
                          ),

                          SizedBox(height: 20.0),

                          //Do you have an account? Sign In
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Do you have an account?'),
                              TextButton(
                                onPressed: () {
                                  // Navigate to sign-in page
                                },
                                child: Text('Login'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
