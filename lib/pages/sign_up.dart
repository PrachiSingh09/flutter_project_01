import 'package:flutter/material.dart';
import 'package:parcel_eye_new_app/components/square_tile.dart';
import 'package:parcel_eye_new_app/components/my_textfield.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 250, 135, 4),
        body: Center(

            //will use column to arenge text and sign up widget in a column.
            child: Column(
          children: [
            SizedBox(
              height: 50,
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
              height: 40,
            ),

            //SignUp widget
            Center(
              child: Container(
                width: 250,
                height: 500,
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

                    //apple or google option to login
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //google button
                        SquareTile(imagePath: 'assets/images/google.png'),
                        SizedBox(width: 25),

                        //apple button
                        SquareTile(imagePath: 'assets/images/apple.png'),
                      ],
                    ),

                    SizedBox(height: 20),

                    //or continue with
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey[400],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'or continue with',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    //TextFields

                    //username textfild
                    MyTextField(
                      controller: usernameController,
                      hintText: 'Username',
                      obscureText: false,
                    ),

                    const SizedBox(height: 10),

                    //Email textfield
                    MyTextField(
                      controller: usernameController,
                      hintText: 'Email Address',
                      obscureText: false,
                    ),

                    const SizedBox(height: 10),

                    //password textfield
                    MyTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: true,
                    ),

                    const SizedBox(height: 35),

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
          ],
        )));
  }
}
