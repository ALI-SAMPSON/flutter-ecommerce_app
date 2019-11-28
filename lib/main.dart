import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// personal imports
import 'components/horizontal_listview.dart';
import 'components/products.dart';

void main() {
  runApp(MaterialApp(
    // remove banner on app
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    // creating carousel widget
    Widget image_carousel = Container(
        height: 200.0,
        child: Carousel(
          // fit container
          boxFit: BoxFit.cover,
          // list of images
          images: [
            AssetImage("assets/images/w3.jpeg"),
            AssetImage("assets/images/m1.jpeg"),
            AssetImage("assets/images/w1/jpeg"),
            AssetImage("assets/images/w4.jpeg"),
            AssetImage("assets/images/c1.jpg"),
          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 3000),
          dotSize: 5.0,
          indicatorBgPadding: 3.0,
        ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text("AHOTOR MKT"),
        centerTitle: false,
        actions: <Widget>[
          // adding app bar items
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),

      // creating navigation drawer
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            /** adding navigation header **/
            UserAccountsDrawerHeader(
                accountName: Text("User"),
                accountEmail: Text("user@example.com"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person,color: Colors.white,),
              ),
            ),

              // background decoration of header
              decoration: BoxDecoration(
                color: Colors.red
              ),
            ),

            /** adding navigation body with menu items **/

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Home"),
                leading: Icon(Icons.insert_chart,color: Colors.redAccent,),
              ),
            ),

            InkWell(
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(Icons.category,color: Colors.redAccent,),
              ),
            ),

            InkWell(
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket,color: Colors.redAccent,),
              ),
            ),

            InkWell(
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite,color: Colors.redAccent,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person,color: Colors.redAccent,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings,color: Colors.black54,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help,color: Colors.blueAccent,),
              ),
            ),

          ],
        ),
      ),


      body: ListView(
        children: <Widget>[
          // adding carousel widget here
          image_carousel,
          // Padding widget
          Padding(padding: const EdgeInsets.all(8.0),
          child: Text("Categories"),),

          // Horizontal list view begins here
          HorizontalList(),

          Padding(
              padding: const EdgeInsets.all(8.0)
          ,child: Text("Recent Products"),),

          // products Grid view
          Container(
            height: 320,
            child: Products(),
          ),

        ],
      ),

    );
  }
}
