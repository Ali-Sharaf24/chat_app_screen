import 'package:chat_app/utilities/Chat_Builder.dart';
import 'package:chat_app/utilities/Status_Builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 80,
        titleSpacing: 10,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                  'images/WhatsApp Image 2021-11-02 at 10.49.10 AM.jpg'),
              radius: 25,
            ),
            SizedBox(
              width: 100,
            ),
            Text(
              'Chats',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    child: Icon(Icons.camera_alt),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    child: Icon(Icons.edit),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  iconSize: 20,
                ),
              ],
            ),
          ),

          // CircleAvatar(
          //   child: Icon(Icons.pen),
          // ),
        ],
      ),
      body: SafeArea(
        ///main container///
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),

            ///main columne start///
            child: Column(
              children: [
                ///search container start///
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search_rounded,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),

                ///search container end///
                SizedBox(
                  height: 20,
                ),

                ///status container start///
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 100,
                    child: Row(
                      children: [
                        ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return StatusBuilder();
                          },
                          itemCount: 10,
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 10.0,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                ///status container end///
                SizedBox(
                  height: 30,
                ),

                ///chat container start///
                ListView.separated(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return ChatBuilder();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 20,
                      );
                    },
                    itemCount: 15)

                ///chat container end///
              ],
            ),
          ),
        ),

        ///main columne end///
      ),
    );
  }
}
