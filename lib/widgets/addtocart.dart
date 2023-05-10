import 'package:egapp/models/catalog.dart';
import 'package:egapp/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/cart.dart';


class addtocart extends StatefulWidget {
  final Item Catalog;
  const addtocart({
     required Key key,required this.Catalog,
  }):super(key: key);


  @override
  State<addtocart> createState() => _addtocartState();
}

class _addtocartState extends State<addtocart> {
 final _cart = CartModel();
  @override

  Widget build(BuildContext context) {
   bool isInCart = _cart.items.contains(widget.Catalog) ?? false;
    return ElevatedButton(

        onPressed: () {
          
          
          if(!isInCart)
          {
            isInCart = isInCart.toggle();
            final _catalog = CatalogModel();
            _cart.catalog = _catalog;
            _cart.add(widget.Catalog);
            setState(() {});
          }
        },
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(MyTheme.darkblueish),
            shape: MaterialStateProperty.all(StadiumBorder())),
        child:isInCart? Icon(Icons.done) : "Buy".text.make());
  }
}
