import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {

  final prod_detail_name;
  final prod_detail_picture;
  final prod_detail_old_price;
  final prod_detail_new_price;

  ProductDetails({
    this.prod_detail_name,
    this.prod_detail_picture,
    this.prod_detail_old_price,
    this.prod_detail_new_price,
});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: Text("Product Details"),
        backgroundColor: Colors.red,
      ),

      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.prod_detail_picture,),
                ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.prod_detail_name,style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 16.0),),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("\$${widget.prod_detail_old_price}",style: TextStyle( color: Colors.grey,
                            decoration: TextDecoration.lineThrough
                        ),),
                      ),
                      Expanded(
                          child: Text("\$${widget.prod_detail_new_price}",style: TextStyle(
                              fontWeight: FontWeight.bold,color: Colors.red),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          /** the first buttons ***/

          Row(
            children: <Widget>[
              // ====== the size button ======
              Expanded(
                  child: MaterialButton(
                      onPressed: (){},
                    elevation: 0.2,
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text("Size"),
                        ),
                        Expanded(
                            child: Icon(Icons.arrow_drop_down)
                        ),
                      ],
                    ),
                  )
              ),

              // ====== the size button ======
              Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    elevation: 0.2,
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Color"),
                        ),
                        Expanded(
                            child: Icon(Icons.arrow_drop_down)
                        ),
                      ],
                    ),
                  )
              ),

              // ====== the size button ======
              Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    elevation: 0.2,
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Qty"),
                        ),
                        Expanded(
                            child: Icon(Icons.arrow_drop_down)
                        ),
                      ],
                    ),
                  )
              ),
            ],
          ),

          /** the second button ***/

          Row(
            children: <Widget>[
              // ====== the size button ======
              Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    elevation: 0.2,
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text("Buy Now")
                  )
              ),

              // add to cart icon button
              IconButton(
                  icon: Icon(Icons.add_shopping_cart,color: Colors.red,),
                  onPressed: (){}),

              // favourite icon button
              IconButton(
                  icon: Icon(Icons.favorite_border,color: Colors.red,),
                  onPressed: (){}),

            ],
          ),

        ],
      ),

    );
  }
}
