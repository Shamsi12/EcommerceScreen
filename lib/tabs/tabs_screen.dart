import 'package:flutter/material.dart';
import 'package:screen_assignment/tabs/components/body.dart';

class TabsScreen extends StatefulWidget {
  static String routeName = "/tabs";
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen>  {

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      iconSize: 35,
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home
          ),
          activeIcon: Icon(
              Icons.home,
            color: Colors.purple,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
          Icons.favorite
          ),
          activeIcon:  Icon(
            Icons.favorite,
            color: Colors.purple,
          ),
          label: 'WishList',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("assets/icons/search.png"),
            color: Colors.transparent,
          ),
          activeIcon: ImageIcon(
            AssetImage("assets/icons/search.png"),
            color: Colors.transparent,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon:  Icon(
            Icons.add_shopping_cart,
           ),
          activeIcon: Icon(
            Icons.add_shopping_cart,
            color: Colors.purple,
          ),
          label: 'Add to cart',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
          AssetImage("assets/icons/user.png")
          ),
          activeIcon: ImageIcon(
            AssetImage("assets/icons/user.png"),
            color: Colors.purple,
          ),
          label: 'Profile',
        ),
      ],
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Ecom App UI",
          style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        ),
        centerTitle: true,
        backgroundColor:Colors.white,
        actions : [
          IconButton(
            onPressed: () {
            },
            icon: Icon(Icons.notifications,
                color: Colors.black,size: 30),
          ),
        ],
        elevation: 5,
      ),
      backgroundColor: Colors.white,
        bottomNavigationBar: _bottomNavigationBar(context),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 08),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            elevation: 0,
            onPressed: () {},
            child: Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple
              ),
              child: Icon(Icons.search, size: 40),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Body(),
    );
  }

}
