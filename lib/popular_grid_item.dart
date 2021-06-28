import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:screen_assignment/carousel.dart';
class PopularGridItem extends StatefulWidget {
  final CarouselImages items;
  const PopularGridItem({
    Key? key, required this.items,
  }) : super(key: key);

  @override
  _PopularGridItemState createState() => _PopularGridItemState();
}
class _PopularGridItemState extends State<PopularGridItem>{

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 6,
        ),
        child: Card(
          elevation: 5,
          shadowColor:Colors.black38,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    widget.items.imageUrl,
                    height: 150.0,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text(
                        widget.items.text,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 12,
                            color: Colors.yellow,
                          ),
                          SizedBox(width: 02),
                          Icon(
                            Icons.star,
                            size: 12,
                            color: Colors.yellow,
                          ),
                          SizedBox(width: 02),
                          Icon(
                            Icons.star,
                            size: 12,
                            color: Colors.yellow,
                          ),
                          SizedBox(width: 02),
                          Icon(
                            Icons.star,
                            size: 12,
                            color: Colors.yellow,
                          ),
                          SizedBox(width: 02),
                          Icon(
                            Icons.star,
                            size: 12,
                            color: Colors.yellow,
                          ),
                          SizedBox(width: 02),
                          Text("5.0 (23 Reviews)",style: TextStyle(
                            fontSize: 12
                          ),)
                        ],
                      )
                    ],
                  ),
                ),
              ]
          )
        ),
      ),
    );
  }
}
