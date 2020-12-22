import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/cart_button.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool isCarrinhoPage;

  const CustomAppBar({Key key, this.title, this.isCarrinhoPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actions: [
        _hideCartButton(isCarrinhoPage),
      ],
    );
  }

  _hideCartButton(bool isCarrinhoPage){
    if(isCarrinhoPage != true) return CartButton();
    return Container();
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
