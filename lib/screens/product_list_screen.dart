import 'package:flutter/material.dart';
import '../models/dummy_data.dart';
import '../widgets/product_item.dart';
import '../constants/app_styles.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Text(
                  'Discover',
                  style: AppStyles.headline,
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.notifications_outlined),
                  onPressed: () {
                    // TODO: Implement notifications
                  },
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search products...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.all(16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemCount: dummyProducts.length,
            itemBuilder: (ctx, index) {
              return ProductItem(product: dummyProducts[index]);
            },
          ),
        ),
      ],
    );
  }
}
