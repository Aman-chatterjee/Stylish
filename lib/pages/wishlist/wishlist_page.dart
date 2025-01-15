import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stylish_app/widgets/search_bar.dart';
import 'package:stylish_app/widgets/sort_filter.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchField(hintText: 'Search any Product'),
        SortAndFilterSection(
            label: '52,082+ Items',
            onSortPressed: () => Fluttertoast.showToast(msg: "Sort Pressed"),
            onFilterPressed: () => Fluttertoast.showToast(msg: "Filter Pressed")
        ),
      ],
    );
  }
}
