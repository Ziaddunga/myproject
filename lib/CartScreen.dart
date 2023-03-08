import 'package:flutter/material.dart';
import 'package:myproject/cart_list.dart';

import 'cpuViewAll_screen.dart';

class CartView extends StatefulWidget {
  static const String screenRoute = 'CartView Screen';
  // CartView({Key? key , required this.cpuModel}) : super(key: key);
  // CpuModel? cpuModel;

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  // CartList cartList = CartList.instance();
  Map<String, String> product = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        title: const Text("Collections"),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  itemCount: CartList.cartList.length,
                  itemBuilder: (_, index) {
                    product = CartList.cartList[index];
                    int counter = 1;
                    return Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image(
                            width: 80.0,
                            height: 80.0,
                            image: NetworkImage(
                              // cpuModel!.imageUrl,
                              /* 'https://m.media-amazon.com/images/I/41hE091wSLL._SL500_.jpg'*/
                              product['imageUrl']!,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Text(
                                    /*'Intel Core i5-11600KF Desktop Processor 6 Cores up to 4.9 GHz Unlocked LGA1200 (Intel 500 Series & Select 400 Series Chipset) 125W'*/
                                    product['name']!,
                                    maxLines: 1,
                                    style: const TextStyle(
                                      fontSize: 15.0,
                                      //fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          if (counter > 0) {
                                            --counter;
                                          }
                                          if (counter == 0) {
                                            CartList.cartList.removeAt(index);
                                          }
                                        });
                                      },
                                      child: const Icon(
                                        Icons.remove,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0,
                                      ),
                                      child: Text(
                                        '$counter',
                                        style: const TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          counter++;
                                          print(counter);
                                        });
                                      },
                                      child: const Icon(
                                        Icons.add,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0.1),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    CartList.cartList.removeAt(index);
                                  });
                                },
                                icon: const Icon(
                                  Icons.delete_outline,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  }),
            ),
            const SizedBox(
              height: 80,
            ),
            MaterialButton(
              minWidth: 350,
              height: 50,
              color: Colors.blue[900],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              onPressed: () {},
              child: const Text(
                'Total Price',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
