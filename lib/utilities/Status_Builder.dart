import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      child: Column(children: [
        Stack(alignment: AlignmentDirectional.bottomEnd, children: [
          CircleAvatar(
            backgroundImage: AssetImage(
                'images/WhatsApp Image 2021-11-02 at 10.49.10 AM.jpg'),
            radius: 30,
          ),
          Container(
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 2, bottom: 2),
            child: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.green,
            ),
          ),
        ]),
        Text(
          'Ali Ahmed sharaf sharaf',
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}
