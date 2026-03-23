import 'package:Bakery_app/models/Fooditem.dart';
import 'package:flutter/material.dart';
//import 'package:Bakery_app/List.dart';
//import 'package:blinkit_clone/homepahe.dart';

class CatagoryBox extends StatelessWidget {
 final List<Fooditem> items;

  const CatagoryBox({super.key,required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //padding: EdgeInsets.all(10),
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
    
        return Container(
          margin: EdgeInsets.all(15),
          width: 80,
    
          decoration: BoxDecoration(
            color: item.color.withOpacity(0.5),
    
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(item.name, textAlign: TextAlign.center),
                  SizedBox(height: 8),
                  SizedBox(
                    height: 70,
                    child: Image.asset(item.image, fit: BoxFit.contain),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
