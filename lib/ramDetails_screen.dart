import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myproject/cart_list.dart';
import 'CartScreen.dart';
import 'HomeScreen.dart';

// ignore: must_be_immutable
class RamDetailsScreen extends StatelessWidget {
  RamDetailsScreen({
    Key? key,
  }) : super(key: key);
  RamModel ramModel = Get.arguments;
  @override
  Widget build(BuildContext context) {
    // int currentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[900],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        titleSpacing: 50.0,
        title: Text(
          ramModel.name,
          style: const TextStyle(
            fontSize: 18.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 33.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image(
                      width: 200.0,
                      height: 200.0,
                      image: NetworkImage(
                        ramModel.imageUrl,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50.1,
              ),
              Text(
                ramModel.data,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 23.0,
                ),
                child: Text(
                  'Product Features',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 5.0,
                    backgroundColor: Colors.blue,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Text(
                      ramModel.details1,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 5.0,
                      backgroundColor: Colors.blue,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Text(
                        ramModel.details2,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 5.0,
                    backgroundColor: Colors.blue,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Text(
                      ramModel.details3,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 5.0,
                    backgroundColor: Colors.blue,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Text(
                      ramModel.details4,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 25.0,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.monetization_on_outlined,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      ramModel.price,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 350,
                height: 50,
                color: Colors.blue[900],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                onPressed: () {
                  CartList.cartList.add(<String, dynamic>{
                    'name': ramModel.name,
                    'imageUrl': ramModel.imageUrl,
                    'counter': 1
                  });
                  Get.to(
                    () => CartView(),
                  );
                },
                child: const Text(
                  'Add Product to List',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
