import 'package:bloc_denemeleri/blocs/cart_bloc.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sepet"),
      ),
      body: StreamBuilder(
        stream: cartBloc.getStream,
        initialData: cartBloc.getCart(),
        builder: (context, snapshot) {
          return buildBuildCart(snapshot);
        },
      ),
    );
  }

  buildBuildCart(AsyncSnapshot snapshot) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final cart = snapshot.data;
        return ListTile(
          title: Text(cart[index].product.name),
          subtitle: Text(
            cart[index].product.price.toString(),
          ),
          trailing: IconButton(
            icon: Icon(Icons.remove_shopping_cart),
            onPressed: () {
              
              cartBloc.removeFromCart(cart[index]);
            },
          ),
        );
      },
      itemCount: snapshot.data.length,
    );
  }
}
