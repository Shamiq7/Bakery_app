
import 'package:Bakery_app/Addtocart.dart';
import 'package:Bakery_app/models/Fooditem.dart';
import 'package:flutter/material.dart';

class BigBox2 extends StatelessWidget {
  final List<Desert> items;
  const BigBox2({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item =items[index];
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 150,
            decoration: BoxDecoration(
              color: item.color.withOpacity(0.6),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(item.image, fit: BoxFit.contain),
                ), // can use sizebox here too

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        (MaterialPageRoute(builder: (context) => Addtocart(item: item))),
                      );
                    },
                    child: Text('View'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
