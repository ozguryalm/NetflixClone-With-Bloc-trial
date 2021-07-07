import 'package:bloc_denemeleri/blocs/cart_bloc.dart';
import 'package:bloc_denemeleri/blocs/product_bloc.dart';
import 'package:bloc_denemeleri/models/cart.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alışveriş"),
        actions: [
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () => Navigator.pushNamed(context, "/cart"))
        ],
      ),
      body: buildBuildProductList(),
    );
  }

  buildBuildProductList() {
    return StreamBuilder(
      initialData: productBloc.getAll(),
      stream: productBloc.getStream,
      builder: (context, snapshot) {
        return snapshot.data.length > 0
            ? buildBuildProductListItems(snapshot)
            : Center(
                child: Text(" Data yok"),
              );
      },
    );
  }

  buildBuildProductListItems(AsyncSnapshot snapshot) {
    return ListView.builder(
      itemCount: snapshot.data.length,
      itemBuilder: (BuildContext context, index) {
        var list = snapshot.data;
        return ListTile(
          title: Text(
            list[index].name,
          ),
          subtitle: Text(
            list[index].price.toString(),
          ),
          trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                cartBloc.adToCart(Cart(list[index], 1));
              }),
        );
      },
    );
  }
}
