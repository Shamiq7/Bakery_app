import 'package:flutter/material.dart';
import 'package:Bakery_app/models/Fooditem.dart';

final List<Fooditem> fooditems = [
  Fooditem(
    name: 'Salad',
    image: 'images/salad.png',
    color: Color(0Xff92A3FD),
    desc: 'Is Good For Your Health',
  ),
  Fooditem(
    name: 'Cake',
    image: 'images/cake.png',
    color: Color(0xffC58BF2),
    desc: 'Has A Lot of Sugar',
  ),
  Fooditem(
    name: 'Biryani',
    image: 'images/biryani.png',
    color: Color(0Xff92A3FD),
    desc: 'One Plate is never Enough',
  ),
  Fooditem(
    name: 'Tiramisu',
    image: 'images/tiramisu.png',
    color: Color(0xffC58BF2),
    desc: 'A bad Addiction',
  ),
];

final List<Desert> desert = [
  Desert(
    name: 'Cake',
    desc: 'Has A Lot of Sugar',
    color: Color(0xffC58BF2),
    image: 'images/cake.png',
    desc2: 'Try our Famous Chacolate cake no sugar no fun!',
    price: 30,
  ),
  Desert(
    name: 'Tiramisu',
    desc: 'A bad Addiction',
    color: Color(0Xff92A3FD),
    image: 'images/tiramisu.png',
    desc2: 'Try our famous Tiramisu you Would feel like you are in turkey!',
    price: 50
  ),
];

final List<Davat> davat = [
  Davat(
    name: 'Salad',
    color: Color(0Xff92A3FD),
    desc: 'Is Good For Your Health',
    image: 'images/salad.png',
  ),
  Davat(
    name: 'Biryani',
    color: Color(0xffC58BF2),
    desc: 'One Plate is never Enough',
    image: 'images/biryani.png',
  ),
];

//could have done the same thing with list but using a list the data is not secure
// List<Map<String, dynamic>> CatogoryData = [
//   {
//     'name': 'Salad',
//     'color': Color(0Xff92A3FD),
//     'image': 'images/salad.png',
//     'desc': ' Is Good For Your Health',
//   },
//   {
//     'name': 'Cake',
//     'color': Color(0xffC58BF2),
//     'image': 'images/cake.png',
//     'desc': ' Has A Lot of Sugar',
//   },
//   {
//     'name': 'Biryani',
//     'color': Color(0Xff92A3FD),
//     'image': 'images/biryani.png',
//     'desc': 'One Plate is never Enough',
//   },
//   {
//     'name': 'Tiramisu',
//     'color': Color(0xffC58BF2),
//     'image': 'images/tiramisu.png',
//     'desc': 'A bad Addiction',
//   },
//   {
//     'name': 'Salad',
//     'color': Color(0Xff92A3FD),
//     'image': 'images/salad.png',
//     'desc': ' Is Good For Your Health',
//   },
// ];
