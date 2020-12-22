import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/carrinho.dart';
import 'package:flutter_shop/pages/home_page.dart';

void main() {
  runApp(FlutterShop());
}

class FlutterShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/carrinho': (context) => Carrinho(),
      },
      title: 'Flutter Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
