import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/carrinho");
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
        child: Image.asset(
          "assets/icons/carrinho.png",
          height: 32,
        ),
      ),
    );
  }
}
