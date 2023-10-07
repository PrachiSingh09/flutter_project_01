import 'package:flutter/material.dart';

class BInvoice extends StatefulWidget {
  BInvoice({Key? key}) : super(key: key);

  @override
  State<BInvoice> createState() => _BInvoiceState();
}

class _BInvoiceState extends State<BInvoice> {
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
                'MANAGE DELIVERY',
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

          //row(column1(invoiceid)+column2(location))
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //column1(invoiceid)
              Column(
                children: [
                  Text(
                    'Invoice ID',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'ACE12465645534',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'ACE12465645534',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'ACE12465645534',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

              //column2(location)
              Column(
                children: [
                  Text(
                    'Location',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Click',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Click',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Click',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
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
