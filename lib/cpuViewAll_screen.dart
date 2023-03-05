import 'package:flutter/material.dart';

class CpuModel {
  final String imageUrl;
  final String data;
  final String price;

  CpuModel({
    required this.imageUrl,
    required this.data,
    required this.price,
  });
}

class CpuViewAllScreen extends StatelessWidget {
  static const String screenRoute = 'CpuViewAll Screen';
  List<CpuModel> processors = [
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41hE091wSLL._SL500_.jpg',
      data:
          'Intel Core i9-12900K Desktop Processor 16 (8P+8E) Cores up to 5.2 GHz Unlocked LGA1700 600 Series Chipset 125W',
      price: '479',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41TUjJQVz7L._SL500_.jpg',
      data:
          'Intel Core i9-12900KF Desktop Processor 16 (8P+8E) Cores up to 5.2 GHz Unlocked  LGA1700 600 Series Chipset 125W',
      price: '429.99',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41i4U0opF-L._SL500_.jpg',
      data:
          'Intel Core i9 (12th Gen) i9-12900F Hexadeca-core (16 Core) 2.40 GHz Processor',
      price: '523.99',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41oVoDp01EL._SL500_.jpg',
      data:
          'Intel Core i9 (12th Gen) i9-12900 Hexadeca-core (16 Core) 2.40 GHz Processor',
      price: '543.93',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/31raHAgvNiL._SL500_.jpg',
      data:
          'Intel Core i7-12700K Desktop Processor 12 (8P+4E) Cores up to 5.0 GHz Unlocked  LGA1700 600 Series Chipset 125W',
      price: '339.99',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/31bCScUYozL._SL500_.jpg',
      data:
          'Intel Core i7-12700F Unlocked Desktop Processor with LGA 1700, 12 Cores & 20 Threads, and 25MB L3 Cache Memory',
      price: '299',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/31raHAgvNiL._SL500_.jpg',
      data:
          'Intel Core i7-12700KF Desktop Processor 12 (8P+4E) Cores up to 5.0 GHz Unlocked  LGA1700 600 Series Chipset 125W',
      price: '299.99',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/31bCScUYozL._SL500_.jpg',
      data:
          'Intel Core i7 (12th Gen) i7-12700 Dodeca-core (12 Core) 2.10 GHz Processor',
      price: '328.19',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41PIwVViD4L._SL500_.jpg',
      data:
          'Intel Core i5-12600K Desktop Processor 10 (6P+4E) Cores up to 4.9 GHz Unlocked  LGA1700 600 Series Chipset 125W',
      price: '237.98',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41WCHKLA9qL._SL500_.jpg',
      data:
          'Intel Core i5-12600KF Desktop Processor 10 (6P+4E) Cores up to 4.9 GHz Unlocked  LGA1700 600 Series Chipset 125W',
      price: '234.99',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41iWlRI7ZHL._SL500_.jpg',
      data: 'Intel Core i5 i5-12600 3.30 GHz Processor',
      price: '273.38',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/31AyiuPuqnL._SL500_.jpg',
      data:
          'Intel Core i5 Core 12400F Desktop Processor 18M Cache, up to 4.40 GHz',
      price: '174.44',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41uexM46jLL._SL500_.jpg',
      data:
          'Intel Core i9-11900K Desktop Processor 8 Cores up to 5.3 GHz Unlocked LGA1200 (Intel 500 Series & Select 400 Series Chipset) 125W',
      price: '349.99',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41iioOWXXOL._SL500_.jpg',
      data:
          'Intel Core i9-11900KF Desktop Processor 8 Cores up to 5.3 GHz Unlocked LGA1200 (Intel 500 Series & Select 400 Series Chipset) 125W',
      price: '369.98',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41Eg+cawmCL._SL500_.jpg',
      data:
          'Intel Core i9-11900F Desktop Processor 8 Cores up to 5.2 GHz LGA1200 (Intel® 500 Series & Select 400 Series Chipset) 65W',
      price: '449',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41F4KwHt7PL._SL500_.jpg',
      data:
          'Intel Core i9-11900 Desktop Processor 8 Cores up to 5.2 GHz LGA1200 (Intel 500 Series & Select 400 Series Chipset) 65W',
      price: '379.99',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41WsFq+k2+L._SL500_.jpg',
      data:
          'Intel Core i7-11700K Desktop Processor 8 Cores up to 5.0 GHz Unlocked LGA1200 (Intel 500 Series & Select 400 Series Chipset) 125W',
      price: '308',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41Xsb7B7eJL._SL500_.jpg',
      data:
          'Intel Core i7-11700KF Desktop Processor 8 Cores up to 5.0 GHz Unlocked LGA1200 (Intel 500 Series & Select 400 Series Chipset) 125W',
      price: '290.99',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41+om7ejntL._SL500_.jpg',
      data:
          'Intel Core i7-11700F Desktop Processor 8 Cores up to 4.9 GHz LGA1200 (Intel 500 Series & Select 400 Series Chipset) 65W',
      price: '248.99',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41tH9PnpM9L._SL500_.jpg',
      data:
          'Intel Core i7-11700 Desktop Processor 8 Cores up to 4.9 GHz LGA1200 (Intel 500 Series & Select 400 Series Chipset) 65W',
      price: '299.65',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41BX5A2NwkL._SL500_.jpg',
      data:
          'Intel Core i5-11600KF Desktop Processor 6 Cores up to 4.9 GHz Unlocked LGA1200 (Intel 500 Series & Select 400 Series Chipset) 125W',
      price: '198.01',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41YbUzPfumL._SL500_.jpg',
      data:
          'Intel Core i5-11600K Desktop Processor 6 Cores up to 4.9 GHz Unlocked LGA1200 (Intel 500 Series & Select 400 Series Chipset) 125W',
      price: '264.99',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41HZBsvzQaL._SL500_.jpg',
      data:
          'Intel Core i5-11600 Desktop Processor 6 Cores up to 4.8 GHz LGA1200 (Intel 500 Series & Select 400 Series Chipset) 65W',
      price: '269.47',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41cGF0yoN+L._SL500_.jpg',
      data:
          'Intel Core i5-11400F Desktop Processor 6 Cores up to 4.4 GHz LGA1200 (Intel 500 Series & Select 400 Series Chipset) 65W',
      price: '135.99',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/417ZTkzHL5L._SL500_.jpg',
      data:
          'Intel Core i5-11400 Desktop Processor 6 Cores up to 4.4 GHz LGA1200 (Intel 500 Series & Select 400 Series Chipset) 65W',
      price: '169.27',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/515zFnZAcBL._SL500_.jpg',
      data:
          'Intel Core i9-10900K Desktop Processor 10 Cores up to 5.3 GHz Unlocked  LGA1200 (Intel 400 Series Chipset) 125W',
      price: '366.99',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41y91XADvDL.jpg',
      data:
          'Intel Core i9-10900KF Processor, 10 Cores & 20 Threads , Unlocked Without Processor Graphics',
      price: '359.99',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41ZeUpnQz5L._SL500_.jpg',
      data:
          'Intel Core i9-10900F Desktop Processor 10 Cores up to 5.2 GHz Without Processor Graphics LGA 1200 (Intel 400 Series chipset) 65W',
      price: '429.99',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41oqnIkOoNL._SL500_.jpg',
      data:
          'Intel Core i9-10900 Desktop Processor 10 Cores up to 5.2 GHz LGA 1200 (Intel 400 Series Chipset) 65W',
      price: '399.99',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51-si8jdlbL._SL500_.jpg',
      data:
          'Intel Core i9-10850K Desktop Processor 10 Cores up to 5.2 GHz Unlocked LGA1200 (Intel 400 Series chipset) 125W',
      price: '343.65',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41AG-t5KLoL.jpg',
      data:
          'Intel Core i7-10700K, 8 Cores & 16 Threads Unlocked Desktop Processor with Intel UHD Graphics 630',
      price: '285.99',
    ),
    CpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41tnxt9RneL.jpg',
      data:
          'Intel Core i7-10700KF, 8 Cores & 16 Threads Unlocked Desktop Processor without Processor Graphics',
      price: '336.47',
    ),
    // CpuModel(
    //   imageUrl: '',
    //   data: '',
    //   price: '',
    // ),
  ];

  CpuViewAllScreen({Key? key}) : super(key: key);

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
                'All Processors',
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
                itemBuilder: (context, index) =>
                    buildCpuItem(processors[index]),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 25.0,
                ),
                itemCount: processors.length,
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
  Widget buildCpuItem(CpuModel processors) => Row(
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
                processors.imageUrl,
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
                      processors.data,
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
                        processors.price,
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
