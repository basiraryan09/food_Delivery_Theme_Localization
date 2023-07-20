  import 'package:flutter/material.dart';
  import 'package:food_delivery_theme_local/provider/appProviderStepper.dart';
  import 'package:provider/provider.dart';

  class customStepper extends StatefulWidget {
    const customStepper({Key? key}) : super(key: key);

    @override
    State<customStepper> createState() => _customStepperState();
  }

  class _customStepperState extends State<customStepper> {


    // List<Item> items = [
    // Item(quantity: 0),
    // ];


    @override
    Widget build(BuildContext context) {
      return  Consumer<ItemProvider>(
        builder: (context, myState, _) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Expanded(
                    // height: 150.h,
                    child: ListView.builder(
                      itemCount: myState.items.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = myState.items[index];
                        return  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                InkWell(
                                    onTap: (){
                                      myState.decreaseQuantity(index);
                                      // setState(() {
                                      //   if (items[index].quantity > 0) {
                                      //     items[index].quantity--;
                                      //   }
                                      // });

                                    },
                                    child: Icon(Icons.remove)),

                                Text('${item.quantity}'),
                                InkWell(
                                    onTap: (){
                                      myState.increaseQuantity(index);
                                      // setState(() {
                                      //   items[index].quantity++;
                                      // });

                                    },
                                    child: Icon(Icons.add)),
                              ],
                            )
                          ],
                        );
                      },
                    ),
                  )

                ],
              ),
            ),
          );
        },

      );
    }
  }



  class Item {
    int quantity;

    Item({ required this.quantity});
  }
