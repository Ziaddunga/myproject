import 'package:flutter/material.dart';

class MotherBoardModel
{
  final String imageUrl;
  final String data;
  final String price;

  MotherBoardModel({
    required this.imageUrl,
    required this.data,
    required this.price,
  });
}

class MotherBoardViewAllScreen extends StatelessWidget
{
  static const String screenRoute = 'MotherBoardViewAll Screen';
  List<MotherBoardModel> motherBoard = [
    MotherBoardModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41JNYpcMOhL._SL500_.jpg',
      data: 'ASUS ROG Strix Z690-A Gaming WiFi D4 LGA1700(Intel 12th Gen) ATX Gaming Motherboard(PCIe 5.0,DDR4,16+1 Power Stages,WiFi 6,2.5 Gb LAN,BT v5.2,Thunderbolt 4,4xM.2 and Front USB 3.2 Gen 2x2 Type-C)',
      price: '279',
    ),
    MotherBoardModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51j+I-OLYXL._SL500_.jpg',
      data: 'MSI Z590-A PRO ProSeries Motherboard ATX, 11th/10th Gen Intel Core, LGA 1200 Socket, DDR4, PCIe 4, M.2 Slots, USB 3.2 Gen 2, 2.5G LAN, DP/HDMI',
      price: '129.99',
    ),
    MotherBoardModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51JJC3n9jmL._SL500_.jpg',
      data: 'GIGABYTE Z590 UD AC (LGA 1200/ Intel Z590/ ATX/Triple M.2/ PCIe 4.0/ USB 3.2 Gen 2/ Intel Wireless-AC/ 2.5GbE LAN/Motherboard)',
      price: '159.99',
    ),
    MotherBoardModel(
      imageUrl: 'https://m.media-amazon.com/images/I/5173arvyvNL._SL500_.jpg',
      data: 'GIGABYTE Z590 AORUS ELITE (LGA 1200/ Intel Z590/ ATX/ Triple M.2/ PCIe 4.0/ USB 3.2 Gen2X2 Type-C/ 2.5GbE LAN/ Gaming Motherboard)',
      price: '159.99',
    ),
    MotherBoardModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51aw+3o2RtL._SL500_.jpg',
      data: 'GIGABYTE Z590 AORUS ELITE AX LGA 1200/ Intel Z590 ATX/ Triple M.2/ PCIe 4.0/ USB 3.2 Gen2X2 Type-C/ Intel WIFI 6/ 2.5GbE LAN/ Gaming Motherboard',
      price: '109.99',
    ),
    MotherBoardModel(
      imageUrl: 'https://m.media-amazon.com/images/I/41-zK1gW+JL._SL500_.jpg',
      data: 'GIGABYTE Z590 Vision G LGA 1200/Intel Z590/ATX/3x M.2/PCIe 4.0/USB 3.2 Gen2X2 Type-C/2.5GbE LAN/Motherboard',
      price: '178',
    ),
    MotherBoardModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51dAbylgNZL._SL500_.jpg',
      data: 'GIGABYTE Z590I AORUS Ultra (LGA 1200/Intel Z590/Mini-ITX/Dual M.2/PCIe 4.0/USB 3.2 Gen2X2 Type-C/Intel WiFi 6/Intel i225V 2.5GbE/ Gaming Motherboard)',
      price: '185.38',
    ),
    MotherBoardModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51OaT7N1JLL._SL500_.jpg',
      data: 'ROG Strix Z590-E Gaming WiFi 6E LGA 1200(Intel 11th/10th Gen) ATX Gaming Motherboard (PCIe 4.0, 14+2 Power Stages, DDR4 5333+, Dual Intel 2.5 Gb LAN,Thunderbolt 4, 4xM.2/NVMe SSD and Aura RGB)',
      price: '169.99',
    ),
    MotherBoardModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51rUE9S6zXL._SL500_.jpg',
      data: 'ASUS Prime Z590-P LGA 1200 (Intel® 11th/10th Gen) ATX Motherboard (PCIe 4.0, 10+1 Power Stages, 3X M.2, 2.5Gb LAN, Front Panel USB 3.2 Gen 2 USB Type-C®, Thunderbolt™ 4 Support)',
      price: '119.99',
    ),
    MotherBoardModel(
      imageUrl: 'https://m.media-amazon.com/images/I/414kDsoprYL._SL500_.jpg',
      data: 'ASUS TUF Gaming Z590-Plus WiFi 6 LGA 1200 (Intel 11th/10th Gen) ATX Gaming Motherboard (PCIe 4.0, 3xM.2/NVMe SSD, 14+2 Power Stages, USB 3.2 Front Panel Type-C,2.5Gb LAN, Thunderbolt 4, Aura RGB)',
      price: '131.88',
    ),
    MotherBoardModel(
      imageUrl: 'https://m.media-amazon.com/images/I/51cXRoW4GiL._SL500_.jpg',
      data: 'ROG Maximus XIII Hero (WiFi 6E) Z590 LGA 1200(Intel11th/10th Gen) ATX Gaming Motherboard (PCIe 4.0, 14+2 Power Stages, DDR4 5333+',
      price: '229.99',
    ),
    MotherBoardModel(
      imageUrl: 'https://m.media-amazon.com/images/I/413liBWGuRL._SL500_.jpg',
      data: 'MSI MEG Z590 GODLIKE Gaming Motherboard (E-ATX, 11th/10th Gen Intel Core, LGA 1200 Socket, DDR4, PCIe 4, SLI/CFX, M.2 Slots, Thunderbolt, Wi-Fi 6E, Mystic Light RGB)',
      price: '599',
    ),
    MotherBoardModel(

      imageUrl: 'https://m.media-amazon.com/images/I/41VcW+eLUQS._SL500_.jpg',
      data: 'NZXT N7 Z590 - N7-Z59XT-B1 - Intel Z590 chipset (Supports 11th Gen CPUs) - ATX Gaming Motherboard - Integrated I/O Shield - WiFi 6E connectivity',
      price: '299',
    ),
    // MotherBoardModel(
    //   imageUrl: '',
    //   data: '',
    //   price: '',
    // ),
  ];

  MotherBoardViewAllScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context)
  {
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
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        )
                    ),
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
                        7.5 ,
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
                'All Mother Board',
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
                itemBuilder: (context , index) => buildMotherBoardItem(motherBoard[index]),
                separatorBuilder: (context , index) => const SizedBox(
                  height: 25.0,
                ),
                itemCount: motherBoard.length,
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
  Widget buildMotherBoardItem(MotherBoardModel motherBoard) => Row(
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
            motherBoard.imageUrl,
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
                  motherBoard.data,
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
                    motherBoard.price,
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
              onPressed: (){},
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