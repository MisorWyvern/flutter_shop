import 'package:flutter/material.dart';
import 'package:flutter_shop/models/product.dart';

class DetalhesCard extends StatelessWidget {
  final Product product;

  const DetalhesCard({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DetalhesCardTitle(
              title: product.titulo,
            ),
            DetalhesCardText(text: product.descricao),
          ],
        ),
      ),
    );
  }
}

class DetalhesCardTitle extends StatelessWidget {
  final String title;

  const DetalhesCardTitle({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
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
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
