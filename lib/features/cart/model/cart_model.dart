class CartItem {
  final String name;
  final double price;
  final double weight;
  int quantity;

  CartItem({required this.name, required this.price, required this.weight, this.quantity = 1});
}

List<CartItem> cartItems = [
  CartItem(name: 'Item 1', price: 100.00, weight: 111),
  CartItem(name: 'Item 2', price: 150.00, weight: 120),
];