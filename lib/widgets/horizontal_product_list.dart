import 'package:flutter/material.dart';
import 'package:stylish_app/models/product_model.dart';
import 'package:stylish_app/widgets/rating_bar.dart';

class HorizontalProductList extends StatelessWidget {
  final List<ProductModel> products;
  final bool showRating;
  final bool showDescription;

  const HorizontalProductList({super.key, required this.products, required this.showRating, required this.showDescription});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (showDescription && showRating) ? 370 : 350, // Adjust the height as per your requirement
      child: ListView.separated(
        padding: const EdgeInsets.all(15),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final product = products[index];
          return Container(
            width: 210, // Adjust the width of each product card
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Image
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  child: Image.asset(
                    product.imagePath,
                    height: showDescription ? 180 : 170,
                    width: double.infinity,
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
                        product.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        maxLines: showDescription ? 1 : 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      // Description
                      if(showDescription) Text(
                        product.description,
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
                            '₹${product.newPrice}',
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
                                '₹${product.oldPrice}',
                                style: const TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Color(0xFFBBBBBB),
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                product.discount,
                                style: const TextStyle(
                                  color: Color(0xFFFE735C),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      if(showRating) const SizedBox(height: 8),
                      // Rating
                      Visibility(
                        visible: showRating,
                        child: Row(
                          children: [
                            RatingBar(
                              rating: product.rating,
                              size: 16,
                              color:const Color(0xFFEDB310),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${product.ratingCount}',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xFFA4A9B3)
                                ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
