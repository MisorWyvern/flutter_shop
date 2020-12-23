import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/home_page.dart';

class CartButton extends StatefulWidget {
  @override
  _CartButtonState createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/carrinho")
            .then((value) => setState(() {}));
      },
      child: Container(
        margin: EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(32),
            topLeft: Radius.circular(32),
          ),
        ),
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.centerRight,
        child: _showCartButtonNotification(),
      ),
    );
  }

  _showCartButtonNotification() {
    if (HomePage.cartItems.length == 0) {
      return Stack(
        children: [
          Image.asset(
            "assets/icons/carrinho.png",
            height: 32,
          ),
        ],
      );
    }

    return Stack(
      children: [
        Image.asset(
          "assets/icons/carrinho.png",
          height: 32,
        ),
        CartButtonNotification(),
      ],
    );
  }
}

class CartButtonNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
