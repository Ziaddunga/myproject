import 'package:flutter/material.dart';

class RamModel {
  final String imageUrl;
  final String data;
  final String price;

  RamModel({
    required this.imageUrl,
    required this.data,
    required this.price,
  });
}

class RamViewAllScreen extends StatelessWidget {
  static const String screenRoute = 'RamViewAll Screen';
  List<RamModel> ram = [
    RamModel(
      imageUrl: 'https://m.media-amazon.com/images/I/5137Ci2Te6L._SL500_.jpg',
      data:
          'TEAMGROUP T-Force Vulcan DDR5 Ram 32GB Kit 2x16GB 5200MHz CL40 Desktop Memory',
      price: '124.99',
    ),
    RamModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51pSlx53oPL._SL500_.jpg',
      data:
          'Crucial Ballistix 3200 MHz DDR4 DRAM Desktop Gaming Memory Kit 32GB (16GBx2) CL16',
      price: 'Out of Stock',
    ),
    RamModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41W8FzNy-zL._SL500_.jpg',
      data:
          'Corsair Vengeance LPX 32GB (2X16GB) DDR4 3200 (PC4-25600) C16 1.35V Desktop Memory',
      price: '84.95',
    ),
    RamModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51tvmuepogL._SL500_.jpg',
      data:
          'Kingston Fury Beast 32GB 2x16GB 5200MT/s DDR5 CL40 Kit of 2 Desktop Memory',
      price: '150.88',
    ),
    RamModel(
      imageUrl: 'https://m.media-amazon.com/images/I/31Ew72vPtxL.jpg',
      data:
          'TEAMGROUP T-Force Vulcan Z, 16GB (2 x 8GB) DDR4-3200MHz CL16 Desktop Memory',
      price: '43.99',
    ),
    RamModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41gJbPx8prL.jpg',
      data:
          'G.SKILL TridentZ RGB Series, 16GB (2 x 8GB) DDR4-3200MHz 288-Pin CL16 Desktop Memory',
      price: '68.99',
    ),
    RamModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51oTkTi6GrL._SL500_.jpg',
      data:
          'Corsair DOMINATOR PLATINUM RGB DDR5 64GB (2x32GB) 5200MHz C40 Intel Optimized Desktop Memory',
      price: '299.99',
    ),
    RamModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41XoPGPM5YL._SL500_.jpg',
      data:
          'Lexar ARES 32GB Kit 16GBx2 DDR5 5200 MHz OC DRAM Desktop Memory for Gaming',
      price: '369.99',
    ),
    RamModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41y8zQptUJL._SL500_.jpg',
      data:
          'XPG Lancer DDR5 5200MHz 32GB (2x16GB) CL38-38-38 UDIMM 288-Pins Desktop SDRAM Memory RAM Kit',
      price: '202.82',
    ),
    // RamModel(
    //   imageUrl: '',
    //   data: '',
    //   price: '',
    // ),
  ];

  RamViewAllScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 45.0,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.grey[400],
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        )),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      width: 292.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          15.0,
                        ),
                        color: Colors.grey[300],
                      ),
                      padding: const EdgeInsets.all(
                        7.5,
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.search,
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                'All Ram',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildRamItem(ram[index]),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 25.0,
                ),
                itemCount: ram.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 1. build item
  // 2. build list
  // 3. add item to list
  Widget buildRamItem(RamModel ram) => Row(
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
                ram.imageUrl,
              ),
            ),
          ),
          const SizedBox(
            width: 17.7,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 165.0,
                    child: Text(
                      ram.data,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.monetization_on_outlined,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        ram.price,
                        style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 50.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.1),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
}
