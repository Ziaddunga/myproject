import 'dart:async';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  FavoritesScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  // int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0.0,
        leading: IconButton(
          color: Colors.blue[900],
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Favorites",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: const Image(
                    width: 65.0,
                    height: 65.0,
                    image: NetworkImage(
                      'https://m.media-amazon.com/images/I/41y91XADvDL.jpg',
                    ),
                  ),
                ),
                // const SizedBox(
                //   width: 10.7,
                // ),
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         const SizedBox(
                //           width: 165.0,
                //           child: Text(
                //             'Intel Core i5-11600KF Desktop Processor 6 Cores up to 4.9 GHz Unlocked LGA1200 (Intel 500 Series & Select 400 Series Chipset) 125W',
                //             maxLines: 1,
                //             overflow: TextOverflow.ellipsis,
                //             style: TextStyle(
                //               fontSize: 15.0,
                //               //fontWeight: FontWeight.w300,
                //             ),
                //           ),
                //         ),
                //         const SizedBox(
                //           height: 0.0,
                //         ),
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             TextButton(
                //               onPressed: () {
                //                 setState(() {
                //                   counter--;
                //                   print(counter);
                //                 });
                //               },
                //               child: const Icon(
                //                 Icons.remove,
                //               ),
                //             ),
                //             Padding(
                //               padding: const EdgeInsets.symmetric(
                //                 horizontal: 5.0,
                //               ),
                //               child: Text(
                //                 '$counter',
                //                 style: const TextStyle(
                //                   fontSize: 18.0,
                //                   fontWeight: FontWeight.w900,
                //                 ),
                //               ),
                //             ),
                //             TextButton(
                //               onPressed: () {
                //                 setState(() {
                //                   counter++;
                //                   print(counter);
                //                 });
                //               },
                //               child: const Icon(
                //                 Icons.add,
                //               ),
                //             ),
                //           ],
                //         ),
                //         // Row(
                //         //   children: [
                //         //     const Icon(
                //         //       Icons.monetization_on_outlined,
                //         //       color: Colors.blue,
                //         //     ),
                //         //     const SizedBox(
                //         //       width: 5.0,
                //         //     ),
                //         //     Text(
                //         //       '22',
                //         //       style: const TextStyle(
                //         //         fontSize: 15.0,
                //         //         fontWeight: FontWeight.w500,
                //         //         color: Colors.blue,
                //         //       ),
                //         //     ),
                //         //   ],
                //         // ),
                //       ],
                //     ),
                //     const SizedBox(
                //       width: 58.0,
                //     ),
                CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.1),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete_outline,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        //   const SizedBox(
        // height: 80,
        //      ),
        //     ],
      ),
      //    ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                image: const DecorationImage(
                    fit: BoxFit.scaleDown,
                    image: NetworkImage("https://i.ibb.co/H7S2PSc/New.png")),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  image: const DecorationImage(
                      fit: BoxFit.scaleDown,
                      image: NetworkImage(
                          "https://i.pcmag.com/imagery/reviews/-25.fit_scale.size_1028x578.v1569472599.jpg")),
                  borderRadius: BorderRadius.circular(20),
                ),
              ))),
        ],
      ),
    );
  }
}
