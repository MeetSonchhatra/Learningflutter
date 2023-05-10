import 'package:egapp/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body: Column(
        children: [_cartList().p32().expand(), Divider(), _carttotal()],
      ),
    );
  }
}

class _carttotal extends StatelessWidget {
  const _carttotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999".text.xl4.make(),
          30.widthBox,
          Container(
            width: 100,
            height: 50,
            child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: "Buying not supported yet ".text.make()));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            context.theme.primaryColorDark),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Buy".text.make())
                .w32(context),
          )
        ],
      ),
    );
  }
}

class _cartList extends StatelessWidget {
  const _cartList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {},
        ),
        title: "Item 1 ".text.make(),
      ),
    );
  }
}
