import 'package:flutter/material.dart';
import 'package:parcel_eye_new_app/components/my_textfield.dart';

class SellerTrack extends StatefulWidget {
  SellerTrack({Key? key}) : super(key: key);

  @override
  State<SellerTrack> createState() => _SellerTrackState();
}

class _SellerTrackState extends State<SellerTrack> {
  //text editing controllers
  final usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 135, 4),

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 250, 135, 4),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'TRACK DELIVERY',
                style: TextStyle(
                  fontFamily: 'BebasNeue',
                  fontSize: 30,
                  color: Color.fromARGB(255, 5, 0, 0),
                ),
              ),
              Image(
                  image: AssetImage(
                'assets/images/comp.png',
              )),
            ],
          ),
          elevation: 0,
        ),
      ),
      body: Center(

          //will use column to arenge text and sign up widget in a column.
          child: SingleChildScrollView(
        child:
            //SignUp widget
            Center(
          child: Container(
            width: 250,
            height: 460,
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
                SizedBox(height: 20),

                //Tracking ID/Phone Number textfild
                MyTextField(
                  controller: usernameController,
                  hintText: 'Tracking ID/Phone No.',
                  obscureText: false,
                ),

                SizedBox(height: 10),

                //Email ID textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Email Address',
                  obscureText: false,
                ),

                SizedBox(height: 20),

                //tracking button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: Size(230, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  ),
                  child: Text(
                    'Track',
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
      )),
      //bottom navigation bar
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 55,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //1st circle
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 201, 178, 77),
              radius: 15,
            ),

            //search icon
            CircleAvatar(
              backgroundColor: Color.fromARGB(206, 231, 221, 221),
              child: IconButton(
                icon: Icon(Icons.replay_rounded),
                onPressed: () {},
              ),
            ),

            //profile
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 104, 97, 97),
              child: Container(
                height: 30,
                width: 30,
                child: Image.asset('assets/images/userimg.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
