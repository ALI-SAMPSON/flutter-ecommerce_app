import 'package:flutter/material.dart';
import 'package:esn_ecommerce_user/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  // creating list of maps
  var product_list = [
    {
      "name": "Blazer",
      "picture": "assets/images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blazer2",
      "picture": "assets/images/products/blazer2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red dress",
      "picture": "assets/images/products/dress1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Black dress ",
      "picture": "assets/images/products/dress2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Brown Hills",
      "picture": "assets/images/products/hills1.jpeg",
      "old_price": 80,
      "price": 45,
    },
    {
      "name": "Red Hills",
      "picture": "assets/images/products/hills2.jpeg",
      "old_price": 75,
      "price": 48,
    },
    {
      "name": "Sports Pant",
      "picture": "assets/images/products/pants1.jpg",
      "old_price": 90,
      "price": 50,
    },
    {
      "name": "Ash Pant",
      "picture": "assets/images/products/pants2.jpeg",
      "old_price": 65,
      "price": 40,
    },
    {
      "name": "Footwear",
      "picture": "assets/images/products/shoe1.jpg",
      "old_price": 80,
      "price": 45,
    },
    {
      "name": "Flower Skirt",
      "picture": "assets/images/products/skt1.jpeg",
      "old_price": 65,
      "price": 40,
    },
    {
      "name": "Cream Skirt",
      "picture": "assets/images/products/skt2.jpeg",
      "old_price": 65,
      "price": 35,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {

  // Global / instance variables
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Container(
      // product item
      child: Card(
        child: Hero(
            tag: prod_name,
            child: Material(
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      // passing product details to the details page
                        builder: (context) => ProductDetails(
                      prod_detail_name: prod_name,
                      prod_detail_picture: prod_picture,
                      prod_detail_old_price: prod_old_price,
                      prod_detail_new_price: prod_price,
                    ))),
                child: GridTile(
                    footer: Container(
                      color: Colors.white70,
                      child: ListTile(
                        leading: Text(
                          prod_name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "\$$prod_price",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w800),
                        ),
                        subtitle: Text(
                          "\$$prod_old_price",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                    ),
                    child: Image.asset(
                      prod_picture,
                      fit: BoxFit.cover,
                    )),
              ),
            )),
      ),
    );
  }
}
