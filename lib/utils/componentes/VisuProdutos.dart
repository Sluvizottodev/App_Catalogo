import 'package:flutter/material.dart';
import '../../model/Produtos.dart';
import '../constants/colors.dart';

class ProdutoItem extends StatelessWidget {
  final Product product;

  const ProdutoItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 160,
      child: Row(
        children: [
          Image.asset(
            product.imageUrl,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8.0),
                Text(
                  'R\$ ${product.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16,
                    color: TColors.textPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  'Em até 12x de R\$ ${(product.price / 12).toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 14,
                    color: TColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
