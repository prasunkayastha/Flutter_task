class Product {
  final String name;
  final double price;
  final double weight;

  Product({required this.name, required this.price, required this.weight});
}

List<Product> products = [
  Product(name: 'Item 1', price: 100.00, weight: 111),
  Product(name: 'Item 2', price: 150.00, weight: 120),
  Product(name: 'Item 3', price: 200.00, weight: 115),
  Product(name: 'Item 4', price: 250.00, weight: 125),
  Product(name: 'Item 5', price: 300.00, weight: 130),
];
