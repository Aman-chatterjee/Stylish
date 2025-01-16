import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stylish_app/widgets/rating_bar.dart';
import '../models/product_model.dart';

class StaggeredGridView extends StatelessWidget {
  final List<ProductModel> products; // Use your existing ProductModel class here.
  final Function(int index) onTap;

  const StaggeredGridView({
    super.key,
    required this.products,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MasonryGridView.builder(
        padding: const EdgeInsets.all(5),
        itemCount: products.length,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Material(
              color: Colors.white,
              elevation: 3,
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: InkWell(
                onTap: ()=> onTap(index),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product Image
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.asset(
                        products[index].imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Product Title
                          Text(
                            products[index].title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          // Description
                          Text(
                            products[index].description,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          // Price
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '₹${products[index].newPrice}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    '₹${products[index].oldPrice}',
                                    style: const TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Color(0xFFBBBBBB),
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    products[index].discount,
                                    style: const TextStyle(
                                      color: Color(0xFFFE735C),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          // Rating
                          Row(
                            children: [
                              RatingBar(
                                rating: products[index].rating,
                                size: 16,
                                color: const Color(0xFFEDB310),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '${products[index].ratingCount}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFA4A9B3),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
