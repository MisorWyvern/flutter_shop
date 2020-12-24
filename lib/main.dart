import 'package:flutter/material.dart';
import 'package:flutter_shop/models/color_palette.dart';
import 'package:flutter_shop/pages/carrinho.dart';
import 'package:flutter_shop/pages/home_page.dart';

final Color scaffoldBgColor = Colors.grey[200];

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
        primarySwatch: ColorPalette().carafe,
        accentColor: ColorPalette().seafoamGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
          bodyText2: TextStyle(
            color: Colors.black,
          ),
          headline3: TextStyle(
              fontSize: 24,
              fontFamily: 'Alata',
              fontWeight: FontWeight.bold,
              color: ColorPalette().seafoamGreen[500]),
          headline4: TextStyle(
              fontSize: 16,
              fontFamily: 'Alata',
              fontWeight: FontWeight.bold,
              color: ColorPalette().seafoamGreen),
          headline5: TextStyle(
              fontSize: 16,
              fontFamily: 'Alata',
              fontWeight: FontWeight.bold,
              color: Colors.black),
          headline6: TextStyle(
              fontSize: 20,
              fontFamily: 'Alata',
              fontWeight: FontWeight.bold,
              color: ColorPalette().carafe),
        ),
      ),
      home: HomePage(),
    );
  }
}
