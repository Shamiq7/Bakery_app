import 'package:Bakery_app/models/Fooditem.dart';
import 'package:flutter/material.dart';

class SmallBoxes extends StatelessWidget {
  // final List<Fooditem> items;
  final List<Davat> items;

  const SmallBoxes({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //itemCount: fooditems.length,
      itemCount: items.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final item = items[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 80,
            child: Card(
              elevation: 10,
              color: item.color,
              child: Row(
                children: [
                  //SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(item.image),
                    ),
                  ),
                  SizedBox(width: 50),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.name, style: TextStyle(fontSize: 20)),
                      Text(item.desc, style: TextStyle(fontSize: 15)),
                    ],
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
