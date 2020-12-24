import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/cart_button.dart';
import 'package:flutter_shop/widgets/custom_title.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool isCarrinhoPage;

  const CustomAppBar({Key key, this.title, this.isCarrinhoPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      title: CustomTitle(
        title: title,
        fontSize: 24,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actions: [
        _hideCartButton(isCarrinhoPage),
      ],
    );
  }

  _hideCartButton(bool isCarrinhoPage) {
    if (isCarrinhoPage != true) return CartButton();
    return Container();
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
