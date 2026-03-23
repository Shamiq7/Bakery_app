import 'package:Bakery_app/models/Fooditem.dart';
import 'package:Bakery_app/provider/Filterlogic.dart';
import 'package:Bakery_app/widgets/HomePgCatagoryBox.dart';
import 'package:Bakery_app/widgets/HomepgBigbox2.dart';
import 'package:Bakery_app/widgets/HomepgSmallBoxes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Proj1 extends StatelessWidget {
  const Proj1({super.key});

  @override
  Widget build(BuildContext context) {
    //final provider = context.watch<CounterProvider>();
    final provider2 = context.read<CounterProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Breakfast', style: TextStyle(fontWeight: FontWeight.bold)),

        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //textfield
              Container(
                margin: EdgeInsets.only(top: 40, left: 20, right: 20),

                child: TextField(
                  onChanged: (value) {
                    provider2.filterLogic(value);
                  },

                  // context.read<CounterProvider>().filterLogic(value);
                  decoration: InputDecoration(
                    hintText: 'Search',
                    labelText: 'Help',
                    prefixIcon: Icon(Icons.search),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 2),
                    ),
                  ),
                ),
              ),

              //catagory text
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 270, 0),
                child: Text(
                  'Catagory',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),

              //catagory boxes
              SizedBox(
                height: 150,
                child: Consumer<CounterProvider>(
                  builder: (context, value, child) {
                    return value.filteredFood.isEmpty
                        ? Padding(
                            padding: EdgeInsetsGeometry.all(10),
                            child: Center(child: Text('Item Not Found!')),
                          )
                        : CatagoryBox(items: value.filteredFood);
                  },
                ),
              ),

              // SizedBox(
              //   height: 150,
              //   child: provider.filteredFood.isEmpty
              //       ? Padding(
              //           padding: EdgeInsetsGeometry.all(10),
              //           child: Center(child: Text('Item Not Found!')),
              //         )
              //       : CatagoryBox(items: provider.filteredFood),
              // ),
              // context.watch<CounterProvider>().filteredFood

              //Reccomandation for diet text
              Padding(
                padding: EdgeInsetsGeometry.all(9),
                child: RichText(
                  textAlign: TextAlign.start,

                  text: TextSpan(
                    text: 'Reccomandation\n',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),

                    children: [
                      TextSpan(
                        text: 'For Deserts',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //BigBox2
              SizedBox(
                height: 240,
                child: Consumer<CounterProvider>(
                  builder: (context, value, index) {
                    return value.filteredDesert.isEmpty
                        ? Padding(
                            padding: EdgeInsetsGeometry.all(8),
                            child: Center(
                              child: Text(
                                'Item Not Found!',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          )
                        : BigBox2(items: value.filteredDesert);
                  },
                ),
              ),
              // context.watch<CounterProvider>().filteredDesert

              //Popular text
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Popular For Events',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),

              //small boxes
              Selector<CounterProvider, List<Davat>>(
                selector: (context, provider) {
                  return provider.filteredDavat;
                },
                builder: (context, food, child) {
                  return food.isEmpty
                      ? Padding(
                          padding: EdgeInsetsGeometry.all(8),
                          child: Center(
                            child: Text(
                              'Item Not Available!!',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        )
                      : SmallBoxes(items: food);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// value.filteredDavat.isEmpty
                  // ? Padding(
                  //     padding: EdgeInsetsGeometry.all(8),
                  //     child: Center(
                  //       child: Text(
                  //         'Item Not Available!!',
                  //         style: TextStyle(fontSize: 20),
                  //       ),
                  //     ),
                  //   )
                  // : SmallBoxes(items: value.filteredDavat), 


// old filtering logic inserted below
// class _Proj1State extends State<Proj1> { , now moved to filterlogic

  // late TextEditingController search;
  // List<Fooditem> filteredFood = [];
  // List<Desert> filteredDesert = [];
  // List<Davat> filteredDavat = [];
  // String msg = '';

  // @override
  // void initState() {
  //   super.initState();
  //   search = TextEditingController();
  //   // filteredFood = fooditems;
  //   // filteredDesert = desert;
  //   // filteredDavat = davat;
  // }

  // @override
  // void dispose() {
  //   search.dispose();
  //   super.dispose();
  // }

  // void filterlogic(String value) {
  //   setState(() {
  //     filteredFood = value.isEmpty
  //         ? fooditems
  //         : fooditems.where((item) {
  //             return item.name.toLowerCase().contains(value.toLowerCase());
  //           }).toList();

  //     filteredDesert = value.isEmpty
  //         ? desert
  //         : desert.where((item) {
  //             return item.name.toLowerCase().contains(value.toLowerCase());
  //           }).toList();

  //     filteredDavat = value.isEmpty
  //         ? davat
  //         : davat.where((item) {
  //             return item.name.toLowerCase().contains(value.toLowerCase());
  //           }).toList();
  //   });
