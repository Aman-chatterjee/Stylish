import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stylish_app/widgets/search_bar.dart';
import 'package:stylish_app/widgets/sort_filter.dart';
import 'package:stylish_app/widgets/staggered_gid_view.dart';

import '../../models/product_model.dart';
import '../../widgets/rating_bar.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  List<ProductModel> _products = [];
  final random = Random();

  @override
  void initState() {
    _products = ProductModel.getProductSet3();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchField(hintText: 'Search any Product'),
        SortAndFilterSection(
            label: '${_products.length}+ Items',
            onSortPressed: () => Fluttertoast.showToast(msg: "Sort Pressed"),
            onFilterPressed: () => Fluttertoast.showToast(msg: "Filter Pressed")
        ),
        StaggeredGridView(
          products: _products,
          onTap: (int index){
              Fluttertoast.showToast(msg: _products[index].title);
          },
        )
      ]
    );
  }
}
