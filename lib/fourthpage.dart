import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:share_plus/share_plus.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

class Fourth_Page extends StatefulWidget {
  String shyariName;
  String blankShyari;

  Fourth_Page(this.shyariName, this.blankShyari);

  @override
  State<Fourth_Page> createState() => _Fourth_PageState();
}



class _Fourth_PageState extends State<Fourth_Page> {
  WidgetsToImageController controller = WidgetsToImageController();
  Uint8List? bytes;
  Color? bgColor = Colors.red[400];
  Color textColor = Colors.white;
  String regularFont = "";
  String defaultEmoji = "🙂‍";
  double defaultFontSize = 30;
  String folderPath = "";
  String imagePath = "";

  List fontFamilyPath = [
    "family1",
    "family2",
    "family3",
    "family4",
    "family5",
    "family6",
    "family7",
    "family8",
    "family9",
    "family10",
    "family11"
  ];

  List changeEmoji = [
    """🫶🫵👬""",
    """🦋🫀🌈""",
    """💌📸🎞️""",
    """😂🤣😁""",
    """😶‍🌫️💸🚗""",
    """🌻☀️✨""",
    """🎊🎁🎈""",
    """🌿🏞️☁️""",
    """🤞🕊️✨""",
    """💭🎯🌌""",
    """🏆💪🎉""",
    """🧿♾️🤝""",
  ];

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
          Center(
            child: Card(
              elevation: 10,
              shadowColor: Colors.red,
              child: WidgetsToImage(
                controller: controller,
                child: Container(
                  width: 330,
                  height: 330,
                  color: bgColor,
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      "${widget.blankShyari} \n ${defaultEmoji}",
                      style: TextStyle(
                          fontFamily: regularFont,
                          color: textColor,
                          fontWeight: FontWeight.w800,
                          fontSize: defaultFontSize),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 180,
          ),
          Card(
            shadowColor: Colors.red,
            elevation: 5,
            child: Container(
              height: 140,
              width: 350,
              color: Colors.black54,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.red[300],
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        height: 150,
                                        color: Colors.white,
                                        child: MaterialColorPicker(
                                            onColorChange:
                                                (Color changeBgColor) {
                                          setState(() {
                                            bgColor = changeBgColor;
                                          });
                                        }),
                                      );
                                    },
                                  );
                                });
                              },
                              child: Center(
                                child: Text(
                                  "BACKGRUOUND",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.red[300],
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      height: 150,
                                      color: Colors.white,
                                      child: MaterialColorPicker(
                                        onColorChange: (Color changeTextColor) {
                                          setState(() {
                                            textColor = changeTextColor;
                                          });
                                        },
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Center(
                                child: Text(
                                  "TEXTCOLOR",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.red[300],
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            child: InkWell(
                              onTap: () async {
                                createFolder();

                                final data = await controller.capture();
                                setState(() {
                                  bytes = data;
                                });

                                String imageName =
                                    "Image${Random().nextInt(10000)}.png";
                                File imageFile =
                                    await File("$folderPath/$imageName")
                                        .create();
                                imageFile.writeAsBytesSync(bytes!);

                                setState(() {
                                  imagePath = imageFile.path;
                                });

                                final result = await Share.shareXFiles(
                                    [XFile(imagePath)],
                                    text:
                                        'The photo of the shyari app created by Pradip has been sent to you');

                                if (result.status ==
                                    ShareResultStatus.success) {
                                  print('Share picture');
                                }
                              },
                              child: Center(
                                child: Text(
                                  "SHARE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.red[300],
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      height: 250,
                                      color: Colors.pink[300],
                                      child: ListView.separated(
                                          itemBuilder: (context, index) {
                                            return ListTile(
                                              onTap: () {
                                                setState(() {
                                                  regularFont =
                                                      fontFamilyPath[index];
                                                });
                                                Navigator.pop(context);
                                              },
                                              title: Text(
                                                "${widget.blankShyari}",
                                                style: TextStyle(
                                                    fontFamily:
                                                        "${fontFamilyPath[index]}",
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            );
                                          },
                                          separatorBuilder: (context, index) {
                                            return Divider(
                                              color: Colors.white,
                                              thickness: 5,
                                            );
                                          },
                                          itemCount: fontFamilyPath.length),
                                    );
                                  },
                                );
                              },
                              child: Center(
                                child: Text(
                                  "FONT",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.red[300],
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      color: Colors.pink[300],
                                      height: 200,
                                      child: ListView.separated(
                                          itemBuilder: (context, index) {
                                            return ListTile(
                                              onTap: () {
                                                setState(() {
                                                  defaultEmoji =
                                                      changeEmoji[index];
                                                });
                                                Navigator.pop(context);
                                              },
                                              title: Center(
                                                child: Text(
                                                  "${changeEmoji[index]}",
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                ),
                                              ),
                                            );
                                          },
                                          separatorBuilder: (context, index) {
                                            return Divider(
                                              color: Colors.white,
                                              thickness: 5,
                                            );
                                          },
                                          itemCount: changeEmoji.length),
                                    );
                                  },
                                );
                              },
                              child: Center(
                                child: Text(
                                  "EMOJI",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.red[300],
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      height: 150,
                                      color: Colors.pink[300],
                                      child: StatefulBuilder(
                                        builder: (context, setStateBuilder) {
                                          return Slider(
                                            value: defaultFontSize,
                                            max: 35,
                                            min: 20,
                                            onChanged: (value) {
                                              setState(() {
                                                setStateBuilder(() {
                                                  defaultFontSize = value;
                                                });
                                              });
                                            },
                                          );
                                        },
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Center(
                                child: Text(
                                  "TEXTSIZE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> createFolder() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

    String folderName = "myui_shayriapp";
    Directory path;

    if (androidInfo.version.sdkInt >= 31) {
      path = Directory("storage/emulated/0/Download/$folderName");
    } else {
      path = Directory("storage/emulated/0/$folderName");
    }

    if ((await path.exists())) {
      print("exist");
    } else {
      print("not exist");
      path.create();
    }

    setState(() {
      folderPath = path.path;
    });
  }
}
