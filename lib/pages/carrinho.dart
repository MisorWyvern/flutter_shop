import 'package:flutter/material.dart';
import 'package:flutter_shop/main.dart';
import 'package:flutter_shop/pages/home_page.dart';
import 'package:flutter_shop/widgets/cart_list.dart';
import 'package:flutter_shop/widgets/custom_appbar.dart';
import 'package:intl/intl.dart';

class Carrinho extends StatefulWidget {
  final formatReal = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  @override
  _CarrinhoState createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Theme.of(context).primaryColor,
        height: kToolbarHeight,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total: ",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    "${widget.formatReal.format(_sumCartItemList())}",
                    style: TextStyle(color: Colors.white),
                  ),
                  FlatButton(
                    color: Theme.of(context).accentColor,
                    onPressed: () {},
                    child: Text("Finalizar Compra"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: scaffoldBgColor,
      appBar: CustomAppBar(
        title: "Carrinho",
        isCarrinhoPage: true,
      ),
      body: _hideEmptyCartList(),
    );
  }

  Widget _hideEmptyCartList() {
    return HomePage.cartItems.isEmpty
        ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\u{1F622}",
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  "Não há itens no carrinho...",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        : CartList(updateState: _updateState);
  }

  void _updateState() {
    setState(() {});
  }

  int _sumCartItemList() {
    if (HomePage.cartItems.isEmpty) return 0;

    return HomePage.cartItems
        .map((e) => e.product.preco * e.amount)
        .reduce((value, newValue) => value + newValue);
  }
}
