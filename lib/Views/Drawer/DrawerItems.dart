import 'package:admin_panel_appointzz/Services/ColorPicker.dart';
import 'package:admin_panel_appointzz/Views/Drawer/drawer_itembox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

import '../../main.dart';


class MyDrawer extends StatefulWidget {
  MyDrawer({Key? key,}) : super(key: key);


  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  void initState() {
    super.initState();
  }

  String text =
      'http://play.google.com/store/apps/details?id=com.healthSolutions';
  String subject = '';
  List<String> imagePaths = [];

  _onShare(BuildContext context) async {
    final RenderBox box = context.findRenderObject() as RenderBox;

    if (imagePaths.isNotEmpty) {
      await Share.shareFiles(imagePaths,
          text: text,
          subject: subject,
          sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
    } else {
      await Share.share(text,
          subject: subject,
          sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: SafeArea(
        child: Drawer(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45.0),
          ),
          backgroundColor: cleanDarkBlueGrey,
          child: Drawer(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45.0),
            ),
            backgroundColor: cleanDarkBlueGrey,
            child: Column(
              children: <Widget>[


                Container(
                  color: cleanDarkBlueGrey,
                  padding: const EdgeInsets.only(left: 10),
                  height: 95,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.account_circle,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Stuart',
                                textScaleFactor: 1.0,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: ListView(
                    children: [
                      DrawerItemBox(
                        blockIcon: Icons.home_outlined,
                        blockName: "Home",
                        blockTapAction: (){
                          Navigator.of(context).pushAndRemoveUntil(
                            CupertinoPageRoute(
                                builder: (context) => HomePage()),
                                (Route<dynamic> route) => false,
                          );
                        },
                      ),

                      // DrawerItemBox(
                      //   blockIcon: Icons.call,
                      //   blockName: "Call Us",
                      //   blockTapAction: (){},
                      // ),

                      DrawerItemBox(
                        blockIcon: Icons.history_rounded,
                        blockName: "History",
                        blockTapAction: (){},
                      ),

                      // DrawerItemBox(
                      //   blockIcon: Icons.people_alt_outlined,
                      //   blockName: "Our Partners",
                      //   blockTapAction: (){},
                      // ),

                      DrawerItemBox(
                        blockIcon: Icons.share,
                        blockName: "Share",
                        blockTapAction: (){},
                      ),

                      // DrawerItemBox(
                      //   blockIcon: Icons.notifications_active_outlined,
                      //   blockName: "Notifications",
                      //   blockTapAction: (){},
                      // ),

                      DrawerItemBox(
                        blockIcon: Icons.medical_services_outlined,
                        blockName: "Doctor Advice",
                        blockTapAction: (){},
                      ),

                      DrawerItemBox(
                        blockIcon: Icons.description_outlined,
                        blockName: "Terms and Conditions",
                        blockTapAction: (){},
                      ),

                      DrawerItemBox(
                        blockIcon: Icons.login_outlined,
                        blockName: "Logout",
                        blockTapAction: (){
                          // _logOut();
                        },
                      ),

                      DrawerItemBox(
                        blockIcon: Icons.info_outlined,
                        blockName: "Version",
                        blockTapAction: (){},
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
