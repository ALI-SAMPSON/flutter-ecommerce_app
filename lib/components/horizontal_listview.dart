import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'assets/images/cats/tshirt.png',
            imageCaption: 'Shirt',
          ),
          Category(
            imageLocation: 'assets/images/cats/dress.png',
            imageCaption: 'Dress',
          ),
          Category(
            imageLocation: 'assets/images/cats/formal.png',
            imageCaption: 'Formal',
          ),
          Category(
            imageLocation: 'assets/images/cats/informal.png',
            imageCaption: 'Informal',
          ),
          Category(
            imageLocation: 'assets/images/cats/jeans.png',
            imageCaption: 'Jeans',
          ),
          Category(
            imageLocation: 'assets/images/cats/shoe.png',
            imageCaption: 'Shoe',
          ),
//          Category(
//            imageLocation: 'assets/images/cats/accessories.png',
//            imageCaption: 'Accessories',
//          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  // constructor
  Category({this.imageLocation, this.imageCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 90.0,
          child: ListTile(
            // image of category
            title: Image.asset(
              imageLocation,
              width: 70.0,
              height: 70.0,
            ),
            // title of category
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(imageCaption)
            ),
          ),
        ),
      ),
    );
  }
}
