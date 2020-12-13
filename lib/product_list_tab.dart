import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'model/app_state_model.dart';
import 'product_row_item.dart';

class ProductListTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Consumer<AppStateModel>(
        builder: (context, child, model) {
          final products = model.getProducts();

          return CustomScrollView(
            semanticChildCount: products.length,
            slivers: <Widget>[
              CupertinoSliverNavigationBar(
                largeTitle: Text('TEST STORE'),
              ),

              //adding new sliver to hold product list
              SliverSafeArea(
                top: false,
                minimum: const EdgeInsets.only(top: 8),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (index < products.length) {
                        return ProductRowItem(
                          index: index,
                          product: products[index],
                          lastItem: index == products.length - 1,
                        );
                      }

                      return null;
                    },
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}