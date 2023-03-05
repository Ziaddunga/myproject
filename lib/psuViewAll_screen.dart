import 'package:flutter/material.dart';

class PsuModel {
  final String imageUrl;
  final String data;
  final String price;

  PsuModel({
    required this.imageUrl,
    required this.data,
    required this.price,
  });
}

class PsuViewAllScreen extends StatelessWidget {
  static const String screenRoute = 'PsuViewAll Screen';
  List<PsuModel> psu = [
    PsuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41lMkfJbQkS._SL500_.jpg',
      data:
          'EVGA SuperNOVA 850 G6, 80 Plus Gold 850W, Fully Modular, Eco Mode with FDB Fan, 10 Year Warranty, Includes Power ON Self Tester, Compact 140mm Size, Power Supply 220-G6-0850-X1',
      price: '176.99',
    ),
    PsuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51GM3nMRb3L.jpg',
      data:
          'Corsair RMX Series (RM650X), 80+ Gold Certified 650W Fully Modular Power Supply',
      price: '219.99',
    ),
    PsuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51Yh0a9M2lL.jpg',
      data:
          'Corsair RM850X White Series, 80+ Gold Certified 850W Fully Modular Power Supply',
      price: '249',
    ),
    PsuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/518z1uy+zbL.jpg',
      data:
          'Thermaltake Toughpower PF1 850W 80+ Platinum Single Side SMD Compact Design Ultra Quiet 120mm Hydraulic Bearing Smart Zero Fan Full Modular Power Supply',
      price: '149.99',
    ),
    PsuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51OWaUfDkyL._SL500_.jpg',
      data: 'ARESGAME Power Supply 500W 80+ Bronze Certified PSU',
      price: 'Out of Stock',
    ),
    PsuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51NPKOoEuXL.jpg',
      data:
          'Seasonic Focus SGX-500, 80+ Gold Certified 500W SFX-L Power Supply with Fan Control in Fanless, Silent, and Cooling Mode',
      price: '99.99 (Used)',
    ),
    PsuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51Lpzml7OuL.jpg',
      data:
          'be quiet! Pure Power 11, 80 Plus Gold Certified 500W Modular Power Supply',
      price: '176',
    ),
    PsuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51+PnEuR1TL.jpg',
      data:
          'Rosewill Computer Modular Power Supply/PSU, Glacier Series 500 Watt 80 Plus Bronze Certified PSU with Silent 135mm Fan with Auto Fan Speed Control',
      price: '49.99',
    ),
    PsuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/512cLUSfKgL.jpg',
      data: 'AEROCOOL Integrator, 80+ Bronze Certified 500W Power ATX Supply',
      price: 'Out of Stock',
    ),
    // PsuModel(
    //   imageUrl: '',
    //   data: '',
    //   price: '',
    // ),
  ];

  PsuViewAllScreen({Key? key}) : super(key: key);

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
                'All Psu',
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
                itemBuilder: (context, index) => buildPsuItem(psu[index]),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 25.0,
                ),
                itemCount: psu.length,
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
  Widget buildPsuItem(PsuModel psu) => Row(
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
                psu.imageUrl,
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
                      psu.data,
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
                        psu.price,
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
