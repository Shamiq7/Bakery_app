import 'package:Bakery_app/provider/Filterlogic.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Viewcart extends StatelessWidget {
  // final List<cartItem> cartItems;
  const Viewcart({super.key});

  @override
  Widget build(BuildContext context) {
    // final cartprovider = context.watch<CartProvider>().cart;
    // final subTotal = context.watch<CartProvider>().calculateTotal();
    return Scaffold(
      appBar: AppBar(title: Text('View Cart'), centerTitle: true),

      body: SafeArea(
        child: Consumer<CartProvider>(
          builder: (context, value, child) {
            if (value.cart.isEmpty) {
              return Center(
                child: Text(
                  '🛒 Your cart is empty!',
                  style: TextStyle(fontSize: 15),
                ),
              );
            }

            return ListView.builder(
              itemCount: value.cart.length,
              itemBuilder: (context, index) {
                final items = value.cart[index];
                return Column(
                  children: [
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(items.item.image),
                            radius: 40,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  items.item.name,
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text("\$${items.item.price.toString()}"),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // context.read<CartProvider>().subQuantity(items);
                              value.subQuantity(items);
                            },
                            child: Text('-', style: TextStyle(fontSize: 27)),
                          ),
                          SizedBox(width: 10),
                          Text(items.quantity.toString()),
                          SizedBox(width: 10),

                          ElevatedButton(
                            onPressed: () {
                              // context.read<CartProvider>().addQuantity(items);
                              value.addQuantity(items);
                            },
                            child: Text('+', style: TextStyle(fontSize: 20)),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        height: 100,

        decoration: BoxDecoration(color: Colors.blueGrey),
        child: Consumer<CartProvider>(
          builder: (context, value, child) {
            return Row(
              children: [
                Text(
                  'Total Price: \$${value.calculateTotal().toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: Text('Buy'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
