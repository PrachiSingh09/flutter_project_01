import 'package:flutter/material.dart';
import 'package:parcel_eye_new_app/components/my_textfield.dart';

class BShipmentDetails extends StatefulWidget {
  BShipmentDetails({Key? key}) : super(key: key);

  @override
  State<BShipmentDetails> createState() => _BShipmentDetailsState();
}

class _BShipmentDetailsState extends State<BShipmentDetails> {
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
                'CREATE DELIVERY',
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

          //will use column to arrange text and button widget in a column.
          child: SingleChildScrollView(
        child:
            //details widget
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
                Text(
                  'Shipment Details',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),

                SizedBox(height: 20),

                //Receiver's name textfild
                Text('Receiver Name'),
                SizedBox(height: 5),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Name',
                  obscureText: false,
                ),

                SizedBox(height: 10),

                //Receiver's number textfield
                Text('Receivers number'),
                SizedBox(height: 5),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Phone Number',
                  obscureText: false,
                ),

                SizedBox(height: 10),

                //Address textfield
                Text('Address'),
                SizedBox(height: 5),

                MyTextField(
                  controller: usernameController,
                  hintText: 'Flat/House/Floor number',
                  obscureText: false,
                ),

                SizedBox(height: 10),

                MyTextField(
                  controller: usernameController,
                  hintText: 'Phone Number',
                  obscureText: false,
                ),

                SizedBox(height: 10),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Nearest Landmark',
                  obscureText: false,
                ),

                SizedBox(height: 10),

                //State and city
                Row(

                    //length
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        width: 105,
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'State',
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400),
                              ),
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey[500])),
                        ),
                      ),

                      //City
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        width: 105,
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'City',
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400),
                              ),
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey[500])),
                        ),
                      ),
                    ]),

                SizedBox(height: 10),

                //Pincode
                MyTextField(
                  controller: usernameController,
                  hintText: 'Pincode',
                  obscureText: false,
                ),

                SizedBox(height: 20),
                //tracking button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: Size(50, 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
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
