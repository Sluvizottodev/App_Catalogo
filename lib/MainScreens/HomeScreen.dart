import 'package:diacritic/diacritic.dart';
import 'package:flutter/material.dart';
import '../model/Produtos.dart';
import '../utils/componentes/BarraBusca.dart';
import '../utils/componentes/SemResultado.dart';
import '../utils/componentes/VisuProdutos.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Product> products = [
    Product(
        name: 'Condicionador Ácido Fosfórico 37% - AllPrime',
        imageUrl: 'lib/utils/images/condicionador.png',
        price: 29.99),
    Product(
        name: 'Condicionador Ácido Fosfórico 37% - AllPrime',
        imageUrl: 'lib/utils/images/condicionador.png',
        price: 290.99),
    Product(
        name: 'Condicionador Ácido Fosfórico 37% - AllPrime',
        imageUrl: 'lib/utils/images/mascara.png',
        price: 29.99),
    Product(
        name: 'Condicionador Ácido Fosfórico 37% - AllPrime',
        imageUrl: 'lib/utils/images/condicionador.png',
        price: 29.99),
    Product(
        name: 'Condicionador Ácido Fosfórico 37% - AllPrime',
        imageUrl: 'lib/utils/images/mascara.png',
        price: 29.99),
  ];

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final filteredProducts = products
        .where((product) =>
        removeDiacritics(product.name.toLowerCase()).contains(removeDiacritics(searchQuery.toLowerCase())))
        .toList();

    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10),
          child: BuscaBarra(
            onSearchChanged: (value) {
              setState(() {
                searchQuery = value;
              });
            },
          ),
        ),
      ),
      body: filteredProducts.isNotEmpty
          ? ListView.separated(
              itemCount: filteredProducts.length,
              separatorBuilder: (context, index) => Container(
                height: 2.0,
                color: Colors.grey[300],
              ),
              itemBuilder: (context, index) {
                final product = filteredProducts[index];
                return ProdutoItem(product: product);
              },
            )
          : NoResultsWidget(searchQuery: searchQuery),
    );
  }
}
