import 'package:flutter/material.dart';
import 'screens/product_list_screen.dart';
import 'screens/product_detail_screen.dart';
import 'constants/app_styles.dart';
import 'models/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce App',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: AppColors.textDark),
          titleTextStyle: TextStyle(
            color: AppColors.textDark,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: ProductListScreen(),
      routes: {
        '/product-detail': (ctx) => ProductDetailScreen(
              product: ModalRoute.of(ctx)!.settings.arguments as Product,
            ),
      },
    );
  }
}
