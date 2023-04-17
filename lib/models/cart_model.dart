import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _items = const [
    //[itemName, itemPrice, imagePath, color]
    ["Grape", "3.00", "lib/images/grapes.png", Colors.purple],
    ["Mango", "5.00", "lib/images/mango.png", Colors.yellow],
    ["Strawberry", "6.00", "lib/images/strawberry.png", Colors.red],
    ["Vegetables", "3.00", "lib/images/vegetables.png", Colors.green],
  ];

//creating empty list for cart items

  final List _cartItems = [];
  get cartItems => _cartItems;
  get shopItems => _items;

  //adding items to cart
  void addItem(int index) {
    cartItems.add(shopItems[index]);
    notifyListeners();
  }

  //removing items from cart
  void removeItems(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // total price of cart items
  String calculateTotalPrice() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
