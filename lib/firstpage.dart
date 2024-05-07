import 'package:flutter/material.dart';
import 'package:myui_shayriapp/secondpage.dart';
import 'package:permission_handler/permission_handler.dart';

class Firstpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return State_Firstpage();
  }
}

class State_Firstpage extends State<Firstpage> {
  @override
  void initState() {
    super.initState();
    imagePermission();
  }

  List listViewName = [
    "Dosti",
    "Life",
    "Memerioes",
    "Funny",
    "Political",
    "Morning",
    "Birthday",
    "Nature",
    "Hope",
    "Dreams",
    "Success",
    "Positivity"
  ];

  List listViewImgPath = [
    "asset/images/Dosti.png",
    "asset/images/Life.png",
    "asset/images/Memerioes.png",
    "asset/images/Funny.png",
    "asset/images/Political.png",
    "asset/images/Morning.png",
    "asset/images/Birthday.png",
    "asset/images/Nature.png",
    "asset/images/Hope.png",
    "asset/images/Dreams.png",
    "asset/images/Success.png",
    "asset/images/Positivity.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text(
          "NEW UI SHYARI APP",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Second_Page(
                        listViewName[index], listViewImgPath[index]);
                  },
                ));
              },
              title: Text(
                "${listViewName[index]}",
                style: TextStyle(
                    color: Colors.green[800],
                    fontWeight: FontWeight.w700,
                    fontSize: 25),
              ),
              leading: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset("${listViewImgPath[index]}")),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 20,
              thickness: 10.0,
              color: Colors.grey[400],
            );
          },
          itemCount: listViewName.length),
    );
  }

  Future<void> imagePermission() async {
    var status = await Permission.photos.status;
    if (status.isDenied) {
      Permission.photos.request();
    }
  }
}
