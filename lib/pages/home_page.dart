import 'package:flutter/material.dart';

import 'detalhes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("Início"),
      ),
      body: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Detalhes(),
              ),
            );
          },
          child: Text("Ir para detalhes")),
    );
  }
}
