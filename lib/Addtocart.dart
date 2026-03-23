
import 'package:Bakery_app/models/Fooditem.dart';
import 'package:Bakery_app/provider/Filterlogic.dart';
import 'package:Bakery_app/viewcart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Addtocart extends StatelessWidget {
  final Desert item;

  const Addtocart({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add to Cart'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Text(
              "price: \$${item.price.toString()}",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Center(
                child: SizedBox(
                  height: 400,
                  width: 400,
                  child: Image.asset(
                    item.image,
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                item.desc2,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.read<CartProvider>().addToCart(item);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added to Cart'),
                          duration: Duration(seconds: 4),
                          action: SnackBarAction(
                            label: 'View Cart',
                            onPressed: () {
                              Navigator.push(
                                context,
                                (MaterialPageRoute(
                                  builder: (context) => Viewcart(),
                                )),
                              );
                            },
                          ),
                        ),
                      );
                    },
                    child: Text('Add to Cart'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
