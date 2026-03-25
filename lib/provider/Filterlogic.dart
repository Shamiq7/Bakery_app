import 'package:Bakery_app/models/Fooditem.dart';
import 'package:flutter/material.dart';
import 'package:Bakery_app/List.dart';

class CounterProvider extends ChangeNotifier {
  List<Fooditem> filteredFood = fooditems;
  List<Desert> filteredDesert = desert;
  List<Davat> filteredDavat = davat;

  void filterLogic(String value) {
    if (value.isEmpty) {
      filteredDavat = davat;
      filteredFood = fooditems;
      filteredDesert = desert;
    } else {
      filteredFood = value.isEmpty
          ? fooditems
          : fooditems.where((item) {
              return item.name.toLowerCase().contains(value.toLowerCase());
            }).toList();

      filteredDesert = value.isEmpty
          ? desert
          : desert.where((item) {
              return item.name.toLowerCase().contains(value.toLowerCase());
            }).toList();

      filteredDavat = value.isEmpty
          ? davat
          : davat.where((item) {
              return item.name.toLowerCase().contains(value.toLowerCase());
            }).toList();
    }
    notifyListeners();
  }
}

class CartProvider extends ChangeNotifier {
  final List<cartItem> cart = [];

  void addToCart(Desert item) {
    bool found = false;
    for (var cartITem in cart) {
      if (cartITem.item == item) {
        cartITem.quantity++;
        found = true;
        break;
      }
    }
    if (!found) {
      cart.add(cartItem(item: item));
    }
    notifyListeners();
  }

  void addQuantity(cartItem item) {
    item.quantity++;
    notifyListeners();
  }

  void subQuantity(cartItem item) {
    if (item.quantity > 1) {
      item.quantity--;
    } else {
      cart.remove(item);
    }
    notifyListeners();
  }

  double calculateTotal() {
    double total = 0;

    for (var cartItem in cart) {
      // double price = double.tryParse(cartItem.item.price.toString()) ?? 0;
      // use the above parsing if the price we get from our list is a string in our
      // case its not but if it is then this above code will convert the string num to
      //int then at the bottom we only need to do => total += price * cartItem.quantity;
      // total += cartItem.item.price * cartItem.quantity;
      total += cartItem.subTotal;
    }

    return total;
  }
}

class LoginProvider extends ChangeNotifier {
  var msg = '';
  var user = '';
  void Login(String value) {
    if (value.isEmpty) {
      msg = 'Please Enter Your Name!';
    } else {
      user = value;
      msg = '';
    }
    notifyListeners();
  }

  void reset() {
    msg = '';
    user = '';
    notifyListeners();
  }
}
