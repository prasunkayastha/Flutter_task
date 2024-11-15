import 'package:flutter/material.dart';
import 'package:flutter_task/config/constants/color_constant.dart';
import 'package:flutter_task/config/constants/font_constant.dart';
import 'package:flutter_task/features/cart/model/cart_model.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  double _calculateTotalPrice() {
    double totalPrice = 0.0;
    for (var item in cartItems) {
      totalPrice += item.price * item.quantity;
    }
    return totalPrice;
  }

  void _removeItem(int index) {
    setState(() {
      if (index >= 0 && index < cartItems.length) {
        cartItems.removeAt(index);
      } else {
        print("Index out of range");
      }
    });
  }

  void _addItem(int index) {
    setState(() {
      cartItems[index].quantity++;
    });
  }

  void _substractItem(int index) {
    setState(() {
      if (cartItems[index].quantity > 1) {
        cartItems[index].quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 350,
                color: ColorConstant.primaryColor,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/navigation');
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios_new_outlined,
                                  color: ColorConstant.secondaryColor,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/login');
                                },
                                icon: const Icon(
                                  Icons.logout,
                                  color: ColorConstant.secondaryColor,
                                ),
                              ),
                              Text(
                                'Logout',
                                style: FontConstant.buttonTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 16,
              right: 16,
              bottom: 0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 520,
                      decoration: BoxDecoration(
                        color: ColorConstant.secondaryColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Your Cart- ${cartItems.length} items',
                            style: FontConstant.subHeadingTextStyle,
                          ),
                          const SizedBox(height: 20),
                          ListView.builder(
                            itemCount: cartItems.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final cartItem = cartItems[index];
                              return Card(
                                child: ListTile(
                                  leading: const CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/logo/2logo.png'),
                                    radius: 25,
                                  ),
                                  title: Text(
                                    cartItem.name,
                                    style: FontConstant.cardTitle,
                                  ),
                                  subtitle: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () => _substractItem(index),
                                        icon: Icon(
                                          Icons.remove_circle,
                                          color: ColorConstant.primaryColor,
                                        ),
                                      ),
                                      Text(cartItem.quantity.toString(),
                                          style: FontConstant.cardTitle),
                                      IconButton(
                                        onPressed: () => _addItem(index),
                                        icon: Icon(
                                          Icons.add_circle,
                                          color: ColorConstant.primaryColor,
                                        ),
                                      )
                                    ],
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'INR ${cartItem.price}',
                                        style: FontConstant.cardPrice,
                                      ),
                                      IconButton(
                                        onPressed: () => _removeItem(index),
                                        icon: const Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total',
                                  style: FontConstant.cardTitle,
                                ),
                                Text(
                                  'INR ${_calculateTotalPrice().toString()}',
                                  style: FontConstant.cardTitle,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ColorConstant.primaryColor,
                                foregroundColor: ColorConstant.secondaryColor,
                                minimumSize: const Size(200, 50),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.shopping_cart_checkout,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Checkout',
                                    style: FontConstant.buttonTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
