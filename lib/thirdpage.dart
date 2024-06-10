//Complete

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myui_shayriapp/fourthpage.dart';

class Third_Page extends StatefulWidget {
  String shyariName;
  List blankShyari;
  int particularindex;

  Third_Page(this.shyariName, this.blankShyari, this.particularindex);

  @override
  State<StatefulWidget> createState() {
    return State_Third_Page();
  }
}

class State_Third_Page extends State<Third_Page> {
  PageController controller = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController(initialPage: widget.particularindex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text(
          "${widget.shyariName}",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Expanded(
            child: PageView.builder(
              controller: controller,
              onPageChanged: (value) {
                setState(() {
                  widget.particularindex = value;
                });
              },
              itemCount: widget.blankShyari.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Card(
                    elevation: 10,
                    shadowColor: Colors.pink,
                    child: Container(
                      width: 330,
                      height: 330,
                      color: Colors.pink[300],
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "${widget.blankShyari[widget.particularindex]}",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 250,
          ),
          Card(
            shadowColor: Colors.green,
            elevation: 10,
            child: Container(
              height: 70,
              width: 350,
              color: Colors.green[400],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              if (widget.particularindex > 0) {
                                widget.particularindex--;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.chevron_left_sharp,
                            color: Colors.white,
                            size: 50,
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Fourth_Page(widget.shyariName,
                                    widget.blankShyari[widget.particularindex]);
                              },
                            ));
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 50,
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              if (widget.particularindex <
                                  widget.blankShyari.length - 1) {
                                widget.particularindex++;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.chevron_right_sharp,
                            color: Colors.white,
                            size: 50,
                          ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
