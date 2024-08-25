// product.dart
class Product {
  final String name;
  final String imageUrl;
  final double price;

  Product({required this.name, required this.imageUrl, required this.price});
}

class ProductData {
  static List<Product> products = [
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
}