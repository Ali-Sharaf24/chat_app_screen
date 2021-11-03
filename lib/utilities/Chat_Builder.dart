import 'package:flutter/material.dart';
class ChatBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
      children: [
        Row(
          children: [
            Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                    'images/WhatsApp Image 2021-11-02 at 10.49.10 AM.jpg'),
              ),
              Container(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 10,
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 2, right: 2),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 8,
                ),
              ),
            ]),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ali sharaf',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    Expanded(
                      child: Text(
                        'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 2,
                      ),
                      width: 11,
                      height: 11,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      '2:00 pm',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

