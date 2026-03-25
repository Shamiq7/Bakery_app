import 'package:flutter/material.dart';

class Fooditem {
  final String name;
  final String image;
  final Color color;
  final String desc;

  Fooditem({
    required this.name,
    required this.image,
    required this.color,
    required this.desc,
  });
}

class Desert {
  final String name;
  final Color color;
  final String desc;
  final String image;
  final String desc2;
  final double price;

  Desert({
    required this.name,
    required this.desc,
    required this.color,
    required this.image,
    required this.desc2,
    required this.price,
  });
}

class Davat {
  final String name;
  final String image;
  final String desc;
  final Color color;

  Davat({
    required this.name,
    required this.color,
    required this.desc,
    required this.image,
  });
}

class cartItem {
  final Desert item;
  int quantity;

  cartItem({required this.item, this.quantity = 1});
  double get subTotal => item.price * quantity;
}

// List<cartItem> cart = [];
// class LoginPgitem {
//   var msg = '';
//   var user = '';
//   LoginPgitem({required this.msg, required this.user});
// }
