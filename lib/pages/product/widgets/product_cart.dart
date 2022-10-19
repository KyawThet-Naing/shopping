import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/pages/cart/cart.dart';
import 'package:shopping/providers/cart_provider.dart';
import 'package:shopping/utils/color_utils.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (ctx, pd, child) => GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, Cart.route);
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 20.0),
          child: Badge(
            showBadge: pd.cartCount != 0,
            badgeColor: ColorUtils.appBarColor,
            animationDuration: const Duration(milliseconds: 200),
            animationType: BadgeAnimationType.scale,
            badgeContent: Text(
              "${pd.cartCount == 0 ? "" : pd.cartCount}",
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            child: const Icon(Icons.shopping_cart),
          ),
        ),
      ),
    );
  }
}
