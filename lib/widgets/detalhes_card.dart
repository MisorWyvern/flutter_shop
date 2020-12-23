import 'package:flutter/material.dart';
import 'package:flutter_shop/models/cart_item.dart';
import 'package:flutter_shop/models/product.dart';
import 'package:flutter_shop/pages/home_page.dart';
import 'package:intl/intl.dart';

class DetalhesCard extends StatelessWidget {
  final Product product;
  final Function updateState;
  final formatReal = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  DetalhesCard({Key key, this.product, this.updateState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DetalhesCardTitle(
              title: product.titulo,
            ),
            DetalhesCardText(text: product.descricao),
            Row(
              children: [
                Expanded(
                    child: Text(
                  formatReal.format(product.preco),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6,
                )),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      _addCartItem(
                          CartItem(product: product, amount: 1), context);
                    },
                    child: Text(
                      'Adicionar ao Carrinho',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  _addCartItem(CartItem item, BuildContext context) {
    HomePage.cartItems.add(item);
    Scaffold.of(context).showSnackBar(
      SnackBar(
          content: Text("${item.product.titulo} foi adicionado ao carrinho.")),
    );
    updateState();
  }
}

class DetalhesCardTitle extends StatelessWidget {
  final String title;

  const DetalhesCardTitle({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}

class DetalhesCardText extends StatelessWidget {
  final String text;

  const DetalhesCardText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      child: Text(
        text,
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
