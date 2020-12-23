import 'package:flutter/material.dart';
import 'package:flutter_shop/models/cart_item.dart';
import 'package:flutter_shop/pages/home_page.dart';
import 'package:intl/intl.dart';

class CartList extends StatefulWidget {
  final formatReal = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  final List<CartItem> cartList = HomePage.cartItems;
  final Function updateState;

  CartList({Key key, this.updateState}) : super(key: key);
  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.cartList.length,
      itemBuilder: (BuildContext context, int index) {
        CartItem cartItem = widget.cartList[index];
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          height: 92,
          child: Card(
              child: Row(
            children: [
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(4),
                  ),
                  child: Image(
                    image: AssetImage("assets/images/${cartItem.product.foto}"),
                    fit: BoxFit.cover,
                    height: 92,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cartItem.product.titulo,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              "${widget.formatReal.format(cartItem.product.preco * cartItem.amount)}"),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () => _addItemAmount(cartItem),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: Icon(
                                    Icons.add,
                                    size: 16,
                                  ),
                                ),
                              ),
                              Text("${cartItem.amount}"),
                              GestureDetector(
                                onTap: () => _removeItemAmount(cartItem),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: Icon(
                                    Icons.remove,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        );
      },
    );
  }

  void _addItemAmount(CartItem item) {
    if (item.amount >= 100) return;
    setState(() {
      item.amount++;
    });
    widget.updateState();
  }

  void _removeProductFromCart(CartItem item) {
    setState(() {
      HomePage.cartItems.remove(item);
    });
    widget.updateState();
  }

  void _removeItemAmount(CartItem item) {
    if (item.amount <= 1) {
      _removeProductFromCart(item);
    }

    setState(() {
      item.amount--;
    });
    widget.updateState();
  }
}
