import 'package:flutter/material.dart';
import 'package:flutter_shop/models/cart_item.dart';
import 'package:flutter_shop/models/product.dart';
import 'package:flutter_shop/pages/home_page.dart';

class CartList extends StatelessWidget {
  final List<CartItem> cartList = HomePage.cartItems;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cartList.length,
      itemBuilder: (BuildContext context, int index) {
        CartItem cartItem = cartList[index];
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Card(
              child: Row(
            children: [
              Image(
                image: AssetImage("assets/images/${cartItem.product.foto}"),
                width: 92 + 92.0 / 2,
                height: 92,
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cartItem.product.titulo),
                    Text("Valor: ${cartItem.product.preco}"),
                    Text("Quantidade: ${cartItem.amount}")
                  ],
                ),
              ),
            ],
          )),
        );
      },
    );
  }
}
