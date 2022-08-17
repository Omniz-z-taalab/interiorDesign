import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class PrimaryRoomItem extends StatefulWidget {
  const PrimaryRoomItem({
    Key? key,
  }) : super(key: key);

  @override
  _PrimaryRoomItemState createState() => _PrimaryRoomItemState();
}

class _PrimaryRoomItemState extends State<PrimaryRoomItem> {
  double value = 3.5;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(children: [
          Container(
              width: 100,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('images/image.jpeg',width: double.infinity,)),),
           SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: Column(
              children: [
               Align(
                 alignment: Alignment.topLeft,
                 child: Text(
                      'Design of a Children\'s',
                      style: const TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
               ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                  'room for 2 children',
                  style: const TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,

                ),
              ),
            ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Interior design',
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,

                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text('256 EG',style: TextStyle(
                color: Colors.lightBlueAccent,fontWeight: FontWeight.bold,fontSize: 20
              ),),
              RatingStars(
                value: value,
                onValueChanged: (v) {
                  //
                  setState(() {
                    value = v;
                  });
                },
                starBuilder: (index, color) => Icon(
                  Icons.star,
                  color: color,
                ),
                starCount: 4,
                starSize: 20,
                starSpacing: 1,
                maxValueVisibility: false,
                valueLabelVisibility: false,
                animationDuration: Duration(milliseconds: 1000),
                valueLabelPadding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 2),
                valueLabelMargin: const EdgeInsets.only(right: 8),
                starOffColor: const Color(0xffe7e8ea),
                starColor: Colors.yellow,
              ),
              ElevatedButton(onPressed: (){}, child: Text('BOOK')),
            ],
          ),
        ]),

    );
  }
}
