import 'package:flutter/material.dart';

class GpuModel {
  final String imageUrl;
  final String data;
  final String price;

  GpuModel({
    required this.imageUrl,
    required this.data,
    required this.price,
  });
}

class GpuViewAllScreen extends StatelessWidget {
  static const String screenRoute = 'GpuViewAll Screen';
  List<GpuModel> gpu = [
    GpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51hDLWGA0AL.jpg',
      data:
          'Gigabyte GeForce GTX 1660 Super OC 6G Graphics Card, 2X Windforce Fans, 6GB 192-bit GDDR6, Video Card',
      price: '361',
    ),
    GpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/514-8JqnFXL.jpg',
      data:
          'MSI Gaming GeForce RTX 2060 Super 8GB GDRR6 256-Bit HDMI/DP G-Sync Turing Architecture Overclocked Graphics Card',
      price: '379.99',
    ),
    GpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41Cm+dQ4dpL._SL500_.jpg',
      data:
          'EVGA GeForce RTX 2080 Ti XC ULTRA GAMING, 11GB GDDR6, Dual HDB Fans & RGB LED Graphics Card',
      price: '799.99',
    ),
    GpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/61kZbhbH7mL._SL500_.jpg',
      data:
          'MSI Gaming GeForce RTX 3050 8GB GDDR6 128-Bit HDMI/DP PCIe 4 Torx Twin Fans Ampere OC Graphics Card (RTX 3050 Gaming X 8G)',
      price: '309.99',
    ),
    GpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/416MoOlrTnL._SL500_.jpg',
      data:
          'GIGABYTE GeForce RTX 3060 Ti Gaming OC 8G (REV2.0) Graphics Card, 3X WINDFORCE Fans, LHR, 8GB 256-bit GDDR6, GV-N306TGAMING OC-8GD REV2.0 Video Card',
      price: '439.99',
    ),
    GpuModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51oxQ4ghe+L._SL500_.jpg',
      data:
          'EVGA GeForce RTX 3090 Ti FTW3 Black Gaming, 24G-P5-4981-KR, 24GB GDDR6X, iCX3, ARGB LED, Backplate, Free eLeash',
      price: '2,725.69',
    ),
    // GpuModel(
    //   imageUrl: '',
    //   data: '',
    //   price: '',
    // ),
  ];

  GpuViewAllScreen({Key? key}) : super(key: key);

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
                'All Gpu',
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
                itemBuilder: (context, index) => buildGpuItem(gpu[index]),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 25.0,
                ),
                itemCount: gpu.length,
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
  Widget buildGpuItem(GpuModel gpu) => Row(
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
                gpu.imageUrl,
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
                      gpu.data,
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
                        gpu.price,
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
