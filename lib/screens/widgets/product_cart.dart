import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final String rating;
  final String reviews;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.rating,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          Center(
            child: Image.asset(
              imagePath,
              height: 100,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 10),
          // Product Title
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 5),
          // Product Price
          Text(
            price,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          const SizedBox(height: 5),
          // Rating & Reviews
          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 16),
              const SizedBox(width: 4),
              Text(
                rating,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 4),
              Text(
                reviews,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const Spacer(),
              const Icon(Iconsax.more_bulk, color: Colors.black),
            ],
          ),
        ],
      ),
    );
  }
}
