import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category.dart';
class CategoryListItem extends StatefulWidget {
  final Category category;

  const CategoryListItem({Key? key, required this.category}) : super(key: key);
  @override
  _CategoryListItemState createState() => _CategoryListItemState();
}
class _CategoryListItemState extends State<CategoryListItem>{
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 6,
          vertical: 6,
        ),
        child:Column(
        children:[
          Expanded(
              child: Container(
          child: Card(
            elevation: 5,
            shadowColor: Colors.black38,
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child:Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 10),child:
                Container(
                  width: 45,
                  height:45,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        widget.category.imageUrl,
                        color: Colors.purple,
                      )
                      ]
                      ),
                      ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.category.categoryName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize:25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        ),
                        SizedBox(height: 07),
                      Text(
                      widget.category.categoryQuantity+" items",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                      fontSize:14,
                      ),
                      ),
    ]

            ),
          ),
            ]
            ),
    ),
      ),
          )
      ]
        )
      ),
    );
  }
}
