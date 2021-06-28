import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:screen_assignment/carousel.dart';
import 'package:screen_assignment/category.dart';
import 'package:screen_assignment/list_title_row.dart';
import 'package:screen_assignment/more_catergories_list_item.dart';

import '../../popular_grid_item.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body>{
  List<CarouselImages> list=[
    CarouselImages(imageUrl: "assets/images/iPhone_12.jpg", text: "Iphone 12"),
    CarouselImages(imageUrl: "assets/images/note20ultra.jpg", text: "Note 20 Ultra"),
    CarouselImages(imageUrl: "assets/images/macbookair.jpg", text: "Macbook Air"),
    CarouselImages(imageUrl: "assets/images/macbook-pro.jpg", text: "Macbook Pro"),
    CarouselImages(imageUrl: "assets/images/Gaming_PC.jpg", text: "Gaming PC"),
    CarouselImages(imageUrl: "assets/images/backlit-keyboard.jpg", text: "Backlit Keyboard"),
    CarouselImages(imageUrl: "assets/images/Mercedes.jpg", text: "Mercedes"),
    CarouselImages(imageUrl: "assets/images/mutton.jpg", text: "Mutton"),
    CarouselImages(imageUrl: "assets/images/roadster.jpg", text: "Roadster"),
    CarouselImages(imageUrl: "assets/images/royalfield.jpg", text: "Royal Field")
  ];
  List<Category> categoryList=[
    Category(imageUrl: "assets/icons/clothes.png", categoryName: "Clothes", categoryQuantity: "5"),
    Category(imageUrl: "assets/icons/electricity.png", categoryName: "Electronic", categoryQuantity: "20"),
    Category(imageUrl: "assets/icons/households.png", categoryName: "Households", categoryQuantity: "9"),
    Category(imageUrl: "assets/icons/electricity.png", categoryName: "Appliances", categoryQuantity: "5"),
    Category(imageUrl: "assets/icons/others.png", categoryName: "Others", categoryQuantity: "15"),
  ];
  List<CarouselImages> gridList=[
    CarouselImages(imageUrl: "assets/images/iPhone_12.jpg", text: "Iphone 12"),
    CarouselImages(imageUrl: "assets/images/note20ultra.jpg", text: "Note 20 Ultra"),
    CarouselImages(imageUrl: "assets/images/macbookair.jpg", text: "Macbook Air"),
    CarouselImages(imageUrl: "assets/images/macbook-pro.jpg", text: "Macbook Pro"),
    CarouselImages(imageUrl: "assets/images/Gaming_PC.jpg", text: "Gaming PC"),
    CarouselImages(imageUrl: "assets/images/backlit-keyboard.jpg", text: "Backlit"),
    CarouselImages(imageUrl: "assets/images/Mercedes.jpg", text: "Mercedes"),
    CarouselImages(imageUrl: "assets/images/mutton.jpg", text: "Mutton"),
    CarouselImages(imageUrl: "assets/images/roadster.jpg", text: "Roadster"),
    CarouselImages(imageUrl: "assets/images/royalfield.jpg", text: "Royal Field"),
    CarouselImages(imageUrl: "assets/images/wireless.jpg", text: "Wireless"),
    CarouselImages(imageUrl: "assets/images/tab.jpg", text: "Tab"),
    CarouselImages(imageUrl: "assets/images/samsung.jpg", text: "Samsung")
  ];
  @override
    void initState(){
      super.initState();

    }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children:[
    Expanded(
    child:SingleChildScrollView(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    children: [
      ListTitleRow(title: "Items", suffix: "View More"),
      Padding(
      padding: EdgeInsets.symmetric(
      horizontal: 15,
      ),
        child: Container(
    width: double.infinity,
    height: 380,
    child:Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: EdgeInsets.all(0),
          elevation: 5,
          shadowColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child:Carousel(
          images: list.map((i) {
            return Builder(
                builder: (BuildContext context) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      i.imageUrl,
                      height: 280.0,
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
                        i.text,
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
                          size: 20,
                          color: Colors.yellow,
                        ),
                        SizedBox(width: 02),
                        Icon(
                            Icons.star,
                          size: 20,
                          color: Colors.yellow,
                        ),
                        SizedBox(width: 02),
                        Icon(
                            Icons.star,
                          size: 20,
                          color: Colors.yellow,
                        ),
                        SizedBox(width: 02),
                        Icon(
                            Icons.star,
                          size: 20,
                          color: Colors.yellow,
                        ),
                        SizedBox(width: 02),
                        Icon(
                            Icons.star,
                          size: 20,
                          color: Colors.yellow,
                        ),
                        SizedBox(width: 02),
                        Text("5.0 (23 Reviews)")
                      ],
                    )
                    ],
                  ),
                  ),
                  ]
                  );
                }
            );
          }
          ).toList(),
          dotBgColor: Colors.transparent,
          boxFit: BoxFit.fill,
          borderRadius: true,
          showIndicator: false,
          radius: Radius.circular(10),
          autoplayDuration: const Duration(seconds: 05),
          ),
        ),
      ),
      ),
      ListTitleRow(title: "More Categories", suffix: ""),
      Container(
        height: 90,
          child: ListView.builder(
          shrinkWrap: true,
          itemCount: categoryList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
          return CategoryListItem(
          category:categoryList[index]
          );
            }
                  )
                ),
        ListTitleRow(title: "Popular Items ", suffix: "View More"),
      Container(
          child:GridView.builder(
      shrinkWrap: true,
      itemCount: gridList.length,
      physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio:  0.80 ,
      ),
      itemBuilder: (context, index) {
        return PopularGridItem(
          items: gridList[index],

        );
      },
    )
      )
              ]
            ),
          ),
        ),
      ]
    ),
      );
  }
}
