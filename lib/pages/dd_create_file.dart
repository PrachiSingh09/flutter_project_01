import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

class DdCreateFile extends StatefulWidget {
  DdCreateFile({Key? key}) : super(key: key);

  @override
  State<DdCreateFile> createState() => _DdCreateFileState();
}

class _DdCreateFileState extends State<DdCreateFile> {
  Future<void> createFolder() async {
    String? result = await FilePicker.platform.getDirectoryPath();
    if (result != null) {
      String folderPath = result;
      String newFolderName = 'NewFolder'; // Change this to desired folder name
      Directory newFolder = Directory('$folderPath/$newFolderName');
      if (await newFolder.exists()) {
        print('Folder already exists.');
      } else {
        newFolder.create();
        print('Folder created.');
      }
    }
  }

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Details',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              SizedBox(
                height: 200,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: createFolder,
                  child: Text('Create Folder'),
                ),
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
