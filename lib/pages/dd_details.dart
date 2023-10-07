import 'package:flutter/material.dart';

class DdDetails extends StatefulWidget {
  DdDetails({Key? key}) : super(key: key);

  @override
  State<DdDetails> createState() => _DdDetailsState();
}

class _DdDetailsState extends State<DdDetails> {
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
            children: [
              Text(
                'Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text('All details of parcel and CDS'),

              SizedBox(
                height: 315,
              ),

              //button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(
                          255, 247, 8, 8), // Set the button's background color
                      onPrimary: Colors.white, // Set the text color
                      minimumSize: Size(100, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Cancel',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(width: 16), // Add some spacing between the buttons
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 24, 109,
                          238), // Set the button's background color
                      onPrimary: Colors.white, // Set the text color
                      minimumSize: Size(100, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Reasign',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
