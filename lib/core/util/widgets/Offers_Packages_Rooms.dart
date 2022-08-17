
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OffersRoom extends StatefulWidget {
  const OffersRoom({
    Key? key,
  }) : super(key: key);

  @override
  _OffersRoomState createState() => _OffersRoomState();
}

class _OffersRoomState extends State<OffersRoom> {


  @override
  Widget build(BuildContext context) {
    return  Column(children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'images/image.jpeg',width: double.infinity,)),),
        SizedBox(
          width: 16.0,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('hlkhkjlhkhkhk', style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
              ),
            ),
            SizedBox(
              width: 16.0,
            ),
            Text('256 EG', style: TextStyle(
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),),
          ],
        ),
      ]


    );
  }
}