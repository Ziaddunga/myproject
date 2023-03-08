import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myproject/psuDetails_screen.dart';
import 'package:myproject/psuViewAll_screen.dart';
import 'package:myproject/ramDetails_screen.dart';

import 'package:myproject/ramViewAll_screen.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

import 'cpuDetails_Screen.dart';
import 'cpuViewAll_screen.dart';
import 'gpuDetails_screen.dart';
import 'gpuViewAll_screen.dart';
import 'motherBoardDetails_screen.dart';
import 'motherBoardViewAll_screen.dart';

class CpuModel {
  final String name;
  final String imageUrl;
  final String data;
  final String price;
  final String details1;
  final String details2;
  final String details3;
  final String details4;

  CpuModel({
    required this.name,
    required this.imageUrl,
    required this.data,
    required this.price,
    required this.details1,
    required this.details2,
    required this.details3,
    required this.details4,
  });
}

class MotherBoardModel {
  final String name;
  final String imageUrl;
  final String data;
  final String price;
  final String details1;
  final String details2;
  final String details3;

  MotherBoardModel({
    required this.name,
    required this.imageUrl,
    required this.data,
    required this.price,
    required this.details1,
    required this.details2,
    required this.details3,
  });
}

class RamModel {
  final String name;
  final String imageUrl;
  final String data;
  final String price;
  final String details1;
  final String details2;
  final String details3;
  final String details4;

  RamModel({
    required this.name,
    required this.imageUrl,
    required this.data,
    required this.price,
    required this.details1,
    required this.details2,
    required this.details3,
    required this.details4,
  });
}

class PsuModel {
  final String name;
  final String imageUrl;
  final String data;
  final String price;
  final String details1;
  final String details2;
  final String details3;

  PsuModel({
    required this.name,
    required this.imageUrl,
    required this.data,
    required this.price,
    required this.details1,
    required this.details2,
    required this.details3,
  });
}

class GpuModel {
  final String name;
  final String imageUrl;
  final String data;
  final String price;
  final String details1;
  final String details2;
  final String details3;
  final String details4;

  GpuModel({
    required this.name,
    required this.imageUrl,
    required this.data,
    required this.price,
    required this.details1,
    required this.details2,
    required this.details3,
    required this.details4,
  });
}

class HomeScreen extends StatefulWidget {
  static const String screenRoute = 'Home Screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CpuModel> processors = [
    CpuModel(
      name: 'Intel Core I9-12900K (BX8071512900K)',
      imageUrl: 'https://m.media-amazon.com/images/I/41hE091wSLL._SL500_.jpg',
      data:
          'Intel Core i9-12900K Desktop Processor 16 (8P+8E) Cores up to 5.2 GHz Unlocked LGA1700 600 Series Chipset 125W',
      details1:
          'The processor features Socket LGA-1700 socket for installation on the PCB',
      details2:
          '30 MB of L3 cache memory provides excellent hit rate in short access time enabling improved system performance',
      details3:
          '10 nm enables improved performance per watt and micro architecture makes it power-efficient',
      details4:
          'Intel 7 Architecture enables improved performance per watt and micro architecture makes it power-efficient',
      price: '479',
    ),
    CpuModel(
      name: 'Intel Core I9-12900KF (BX8071512900KF)',
      imageUrl: 'https://m.media-amazon.com/images/I/41TUjJQVz7L._SL500_.jpg',
      data:
          'Intel Core i9-12900KF Desktop Processor 16 (8P+8E) Cores up to 5.2 GHz Unlocked  LGA1700 600 Series Chipset 125W',
      details1:
          'The processor features Socket LGA-1700 socket for installation on the PCB',
      details2:
          '30 MB of L3 cache memory provides excellent hit rate in short access time enabling improved system performance',
      details3:
          '10 nm enables improved performance per watt and micro architecture makes it power-efficient',
      details4:
          'Intel 7 Architecture enables improved performance per watt and micro architecture makes it power-efficient',
      price: '429.99',
    ),
    CpuModel(
      name: 'Intel Core I9-12900F (BX8071512900F)',
      imageUrl: 'https://m.media-amazon.com/images/I/41i4U0opF-L._SL500_.jpg',
      data:
          'Intel Core i9 (12th Gen) i9-12900F Hexadeca-core (16 Core) 2.40 GHz Processor',
      price: '523.99',
      details1:
          'The processor features Socket LGA-1700 socket for installation on the PCB',
      details2:
          '30 MB of L3 cache memory provides excellent hit rate in short access time enabling improved system performance',
      details3: 'Performance Core Clock (2.4 GHz)',
      details4: 'Performance Boost Clock (5.1 GHz)',
    ),
    CpuModel(
      name: 'Intel Core I9-12900 (BX8071512900)',
      imageUrl: 'https://m.media-amazon.com/images/I/41oVoDp01EL._SL500_.jpg',
      data:
          'Intel Core i9 (12th Gen) i9-12900 Hexadeca-core (16 Core) 2.40 GHz Processor',
      details1:
          '30 MB of L3 cache memory offers great system performance and avoids interruptions while executing complex and critical tasks',
      details2:
          'To boost graphics and visual quality, the chipset has a built in Intel UHD Graphics 770 controller',
      details3: '',
      details4: '',
      price: '543.93',
    ),
    CpuModel(
      name: 'Intel Core I7-12700K (BX8071512700K)',
      imageUrl: 'https://m.media-amazon.com/images/I/31raHAgvNiL._SL500_.jpg',
      data:
          'Intel Core i7-12700K Desktop Processor 12 (8P+4E) Cores up to 5.0 GHz Unlocked  LGA1700 600 Series Chipset 125W',
      details1:
          'Intel® Core® i7 3.60 GHz processor offers more cache space and the hyper-threading architecture delivers high performance for demanding applications with better onboard graphics and faster turbo boost',
      details2:
          'The processor features Socket LGA-1700 socket for installation on the PCB',
      details3:
          '25 MB of L3 cache to boost the instruction processing and system performance',
      details4:
          'Intel 7 Architecture enables improved performance per watt and micro architecture makes it power-efficient',
      price: '339.99',
    ),
    CpuModel(
      name: 'Intel Core I7-12700F (BX8071512700F)',
      imageUrl: 'https://m.media-amazon.com/images/I/31bCScUYozL._SL500_.jpg',
      data:
          'Intel Core i7-12700F Unlocked Desktop Processor with LGA 1700, 12 Cores & 20 Threads, and 25MB L3 Cache Memory',
      details1: '12th Generation Intel Core i7 Processor',
      details2: '',
      details3: '',
      details4: '',
      price: '299',
    ),
    CpuModel(
      name: 'Intel Core I7-12700KF (BX8071512700KF)',
      imageUrl: 'https://m.media-amazon.com/images/I/31raHAgvNiL._SL500_.jpg',
      data:
          'Intel Core i7-12700KF Desktop Processor 12 (8P+4E) Cores up to 5.0 GHz Unlocked  LGA1700 600 Series Chipset 125W',
      details1:
          'Intel® Core® i7 3.60 GHz processor offers more cache space and the hyper-threading architecture delivers high performance for demanding applications with better onboard graphics and faster turbo boost',
      details2:
          'The Socket LGA-1700 socket allows processor to be placed on the PCB without soldering',
      details3:
          '11 MB L2 and 25 MB L3 cache offers supreme performance for computation intensive apps',
      details4:
          'Intel 7 Architecture enables improved performance per watt and micro architecture makes it power-efficient',
      price: '299.99',
    ),
    CpuModel(
      name: 'Intel Core I7-12700 (BX8071512700)',
      imageUrl: 'https://m.media-amazon.com/images/I/31bCScUYozL._SL500_.jpg',
      data:
          'Intel Core i7 (12th Gen) i7-12700 Dodeca-core (12 Core) 2.10 GHz Processor',
      details1:
          'Intel® Core® i7 Dodeca-core (12 Core) 2.10 GHz processor offers more cache space and the hyper-threading architecture delivers high performance for demanding applications with better onboard graphics and faster turbo boost',
      details2:
          'The processor features Socket LGA-1700 socket for installation on the PCB',
      details3:
          '25 MB of L3 cache offers supreme performance for computation intensive apps',
      details4:
          'Built-in Intel UHD Graphics 770 controller for improved graphics and visual quality. Supports up to 4 monitors',
      price: '328.19',
    ),
    CpuModel(
      name: 'ntel Core I5-12600K (BX8071512600K)',
      imageUrl: 'https://m.media-amazon.com/images/I/41PIwVViD4L._SL500_.jpg',
      data:
          'Intel Core i5-12600K Desktop Processor 10 (6P+4E) Cores up to 4.9 GHz Unlocked  LGA1700 600 Series Chipset 125W',
      details1:
          'Intel® Core® i5 Deca-core (10 Core) 3.70 GHz processor offers hyper-threading architecture that delivers high performance for demanding applications with improved onboard graphics and turbo boost',
      details2:
          'The Socket LGA-1700 socket allows processor to be placed on the PCB without soldering',
      details3:
          '16 MB of L3 cache rapidly retrieves the most used data available to improve system performance',
      details4:
          'Intel 7 Architecture enables improved performance per watt and micro architecture makes it power-efficient',
      price: '237.98',
    ),
    CpuModel(
      name: 'Intel Core I5-12600KF (BX8071512600KF)',
      imageUrl: 'https://m.media-amazon.com/images/I/41WCHKLA9qL._SL500_.jpg',
      data:
          'Intel Core i5-12600KF Desktop Processor 10 (6P+4E) Cores up to 4.9 GHz Unlocked  LGA1700 600 Series Chipset 125W',
      details1:
          'Intel® Core® i5 processor offers hyper-threading architecture that delivers high performance for demanding applications with improved onboard graphics and turbo boost',
      details2:
          'The processor features Socket LGA-1700 socket for installation on the PCB',
      details3:
          '16 MB of L3 cache rapidly retrieves the most used data available to improve system performance',
      details4:
          'Intel 7 Architecture enables improved performance per watt and micro architecture makes it power-efficient',
      price: '234.99',
    ),
    CpuModel(
      name: 'Intel Core I5-12600 (BX8071512600)',
      imageUrl: 'https://m.media-amazon.com/images/I/41iWlRI7ZHL._SL500_.jpg',
      data: 'Intel Core i5 i5-12600 3.30 GHz Processor',
      details1:
          'Intel® Core® i5 3.30 GHz processor offers hyper-threading architecture that delivers high performance for demanding applications with improved onboard graphics and turbo boost',
      details2:
          'The processor features Socket LGA-1700 socket for installation on the PCB',
      details3: '',
      details4: '',
      price: '273.38',
    ),
    CpuModel(
      name: 'Intel Core I5-12400F (BX8071512400F)',
      imageUrl: 'https://m.media-amazon.com/images/I/31AyiuPuqnL._SL500_.jpg',
      data:
          'Intel Core i5 Core 12400F Desktop Processor 18M Cache, up to 4.40 GHz',
      details1:
          'Intel Core i5-12400F Desktop Processor 6 (6P+0E) Cores Up to 4.4 GHz Turbo Frequency LGA1700 600 Series Chipset 65W Processor Base Power',
      details2: 'Socket LGA 1700',
      details3: 'Performance Core Clock (2.5 GHz)',
      details4: 'TDP (65 W)',
      price: '174.44',
    ),
    CpuModel(
      name: 'Intel Core I5-11600KF (i5-11600KF)',
      imageUrl: 'https://m.media-amazon.com/images/I/41BX5A2NwkL._SL500_.jpg',
      data:
          'Intel Core i5-11600KF Desktop Processor 6 Cores up to 4.9 GHz Unlocked LGA1200 (Intel 500 Series & Select 400 Series Chipset) 125W',
      details1:
          'Compatible with Intel 500 series & select Intel 400 series chipset based motherboards',
      details2: 'Intel Optane Memory Support',
      details3: 'PCIe Gen 4.0 Support',
      details4: 'No thermal solution included',
      price: '198.01',
    ),
    // CpuModel(
    //   imageUrl: '',
    //   data: '',
    //   price: '',
    // ),
  ];

  List<MotherBoardModel> motherBoard = [
    MotherBoardModel(
      name: 'ASUS ROG STRIX Z690-A GAMING WIFI D4 (ROGSTRIXZ690AGAMINGWIFID4)',
      imageUrl: 'https://m.media-amazon.com/images/I/41JNYpcMOhL._SL500_.jpg',
      data:
          'ASUS ROG Strix Z690-A Gaming WiFi D4 LGA1700(Intel 12th Gen) ATX Gaming Motherboard(PCIe 5.0,DDR4,16+1 Power Stages,WiFi 6,2.5 Gb LAN,BT v5.2,Thunderbolt 4,4xM.2 and Front USB 3.2 Gen 2x2 Type-C)',
      details1:
          'Intel LGA 1700 socket: Ready for 12th Gen Intel Core processors, support PCIe 5.0 and out of box Windows 11 ready',
      details2:
          'AI Motherboard : AI Overclocking, AI cooling, AI networking(GameFirst VI) and AI noise cancellation',
      details3:
          'Robust Power Solution: 16+1 power stages with ProCool II power connector, high-quality alloy chokes and durable capacitors to support multi-core processors',
      price: '279',
    ),
    MotherBoardModel(
      name: 'MSI Z590-A PRO (Z590APRO)',
      imageUrl: 'https://m.media-amazon.com/images/I/51j+I-OLYXL._SL500_.jpg',
      data:
          'MSI Z590-A PRO ProSeries Motherboard ATX, 11th/10th Gen Intel Core, LGA 1200 Socket, DDR4, PCIe 4, M.2 Slots, USB 3.2 Gen 2, 2.5G LAN, DP/HDMI',
      details1:
          'Supports 11th and 10th Gen Intel Core/Pentium/Celeron processors for LGA 1200 Socket',
      details2: 'Supports DDR4 Memory, up to 5333(OC) MHz',
      details3:
          'Lightning Fast Experience: PCIe 4.0, Lightning Gen4 x4 M.2 with M.2 Shield Frozr, Intel Turbo USB 3.2 Gen 2',
      price: '129.99',
    ),
    MotherBoardModel(
      name: 'Gigabyte Z590 UD AC',
      imageUrl: 'https://m.media-amazon.com/images/I/51JJC3n9jmL._SL500_.jpg',
      data:
          'GIGABYTE Z590 UD AC (LGA 1200/ Intel Z590/ ATX/Triple M.2/ PCIe 4.0/ USB 3.2 Gen 2/ Intel Wireless-AC/ 2.5GbE LAN/Motherboard)',
      details1: 'Supports 11th and 10th Gen Intel Core Series Processors',
      details2: 'Dual Channel Non-ECC Unbuffered DDR4, 4 DIMMs',
      details3: 'Direct 12+1 Phases Digital VRM Solution with 50A DrMOS',
      price: '159.99',
    ),
    MotherBoardModel(
      name: 'Gigabyte Z590 AORUS ELITE',
      imageUrl: 'https://m.media-amazon.com/images/I/5173arvyvNL._SL500_.jpg',
      data:
          'GIGABYTE Z590 AORUS ELITE (LGA 1200/ Intel Z590/ ATX/ Triple M.2/ PCIe 4.0/ USB 3.2 Gen2X2 Type-C/ 2.5GbE LAN/ Gaming Motherboard)',
      details1: 'Supports 11th and 10th Gen Intel Core Series Processors',
      details2: 'Dual Channel Non-ECC Unbuffered DDR4, 4 DIMMs',
      details3: 'Direct 12+1 Phases Digital VRM Solution with 60A DrMOS',
      price: '159.99',
    ),
    MotherBoardModel(
      name: 'Gigabyte Z590 AORUS ELITE AX',
      imageUrl: 'https://m.media-amazon.com/images/I/51aw+3o2RtL._SL500_.jpg',
      data:
          'GIGABYTE Z590 AORUS ELITE AX LGA 1200/ Intel Z590 ATX/ Triple M.2/ PCIe 4.0/ USB 3.2 Gen2X2 Type-C/ Intel WIFI 6/ 2.5GbE LAN/ Gaming Motherboard',
      details1: 'Supports 11th and 10th Gen Intel Core Series Processors',
      details2: 'Dual Channel Non-ECC Unbuffered DDR4, 4 DIMMs',
      details3: 'Direct 12+1 Phases Digital VRM Solution with 60A DrMOS',
      price: '109.99',
    ),
    MotherBoardModel(
      name: 'Gigabyte Z590 VISION G',
      imageUrl: 'https://m.media-amazon.com/images/I/41-zK1gW+JL._SL500_.jpg',
      data:
          'GIGABYTE Z590 Vision G LGA 1200/Intel Z590/ATX/3x M.2/PCIe 4.0/USB 3.2 Gen2X2 Type-C/2.5GbE LAN/Motherboard',
      details1:
          'Powerful performance support 11th and 10th Gen Intel Core series processors',
      details2: 'Dual Channel Non-ECC Unbuffered DDR4 memory, 4 DIMMs',
      details3: 'Go further without more cables by VisionLINK I/O design',
      price: '178',
    ),
    MotherBoardModel(
      name: 'Gigabyte Z590I AORUS ULTRA',
      imageUrl: 'https://m.media-amazon.com/images/I/51dAbylgNZL._SL500_.jpg',
      data:
          'GIGABYTE Z590I AORUS Ultra (LGA 1200/Intel Z590/Mini-ITX/Dual M.2/PCIe 4.0/USB 3.2 Gen2X2 Type-C/Intel WiFi 6/Intel i225V 2.5GbE/ Gaming Motherboard)',
      details1: 'Supports 11th and 10th Gen Intel Core Series Processors',
      details2: 'Dual Channel Non-ECC Unbuffered DDR4, 2 DIMMs',
      details3: 'Intel Optane Memory Ready',
      price: '185.38',
    ),
    MotherBoardModel(
      name: 'ASUS ROG STRIX Z590-E (ROG STRIX Z590-E GAMING WIFI)',
      imageUrl: 'https://m.media-amazon.com/images/I/51OaT7N1JLL._SL500_.jpg',
      data:
          'ROG Strix Z590-E Gaming WiFi 6E LGA 1200(Intel 11th/10th Gen) ATX Gaming Motherboard (PCIe 4.0, 14+2 Power Stages, DDR4 5333+, Dual Intel 2.5 Gb LAN,Thunderbolt 4, 4xM.2/NVMe SSD and Aura RGB)',
      details1:
          'Intel LGA 1200 socket: Designed to unleash the maximum performance of 11th Gen Intel Core processors',
      details2:
          'AI Motherboard : AI Overclocking, AI cooling, AI networking and AI noise cancelation',
      details3:
          'Robust Power Solution: 14+2 power stages with ProCool II power connector, high-quality alloy chokes and durable capacitors to support multi-core processors',
      price: '169.99',
    ),
    MotherBoardModel(
      name: 'ASUS PRIME Z590-P',
      imageUrl: 'https://m.media-amazon.com/images/I/51rUE9S6zXL._SL500_.jpg',
      data:
          'ASUS Prime Z590-P LGA 1200 (Intel® 11th/10th Gen) ATX Motherboard (PCIe 4.0, 10+1 Power Stages, 3X M.2, 2.5Gb LAN, Front Panel USB 3.2 Gen 2 USB Type-C®, Thunderbolt™ 4 Support)',
      details1:
          'Intel LGA 1200 Socket: Designed to unleash the maximum performance of 11th Gen Intel Core processors.BIOS: 192 (128+64) Mb Flash ROM, UEFI AMI BIOS',
      details2:
          'Enhanced Power Solution: 10+1 DrMOS power stages, ProCool sockets, alloy chokes and durable capacitors provide stable power delivery for the most demanding situations',
      details3:
          'Comprehensive Cooling: VRM heatsink, PCH heatsink, hybrid fan headers and Fan Xpert 4 utility',
      price: '119.99',
    ),
    MotherBoardModel(
      name: 'ASUS TUF Gaming Z590-Plus WiFi (TUF GAMING Z590-PLUS WIFI)',
      imageUrl: 'https://m.media-amazon.com/images/I/414kDsoprYL._SL500_.jpg',
      data:
          'ASUS TUF Gaming Z590-Plus WiFi 6 LGA 1200 (Intel 11th/10th Gen) ATX Gaming Motherboard (PCIe 4.0, 3xM.2/NVMe SSD, 14+2 Power Stages, USB 3.2 Front Panel Type-C,2.5Gb LAN, Thunderbolt 4, Aura RGB)',
      details1:
          'Intel LGA 1200 Socket: Designed to unleash the maximum performance of 11th Gen Intel Core processors',
      details2:
          'Enhanced Power Solution: 14+2 DrMOS power stages, ProCool sockets, military-grade TUF components, and Digi+ VRM for maximum durability and performance',
      details3:
          'Comprehensive Cooling : VRM heatsink, PCH fanless heatsink, M.2 heatsink, hybrid fan headers and Fan Xpert 4 utility',
      price: '131.88',
    ),
    MotherBoardModel(
      name: 'ASUS ROG MAXIMUS XIII HERO',
      imageUrl: 'https://m.media-amazon.com/images/I/51cXRoW4GiL._SL500_.jpg',
      data:
          'ROG Maximus XIII Hero (WiFi 6E) Z590 LGA 1200(Intel11th/10th Gen) ATX Gaming Motherboard (PCIe 4.0, 14+2 Power Stages, DDR4 5333+',
      details1:
          'Intel LGA 1200 socket: Designed to unleash the maximum performance of 11th Gen Intel Core processors',
      details2:
          'AI Motherboard : AI overclocking, AI cooling, AI networking and AI noise cancelation',
      details3:
          'Robust Power Solution: 14+2 teamed power stages rated for 90 Amps, ProCool II power connectors, MicroFine alloy chokes and 10K Japanese-made black metallic capacitors',
      price: '229.99',
    ),
    MotherBoardModel(
      name: 'MSI MEG Z590 GODLIKE',
      imageUrl: 'https://m.media-amazon.com/images/I/413liBWGuRL._SL500_.jpg',
      data:
          'MSI MEG Z590 GODLIKE Gaming Motherboard (E-ATX, 11th/10th Gen Intel Core, LGA 1200 Socket, DDR4, PCIe 4, SLI/CFX, M.2 Slots, Thunderbolt, Wi-Fi 6E, Mystic Light RGB)',
      details1:
          'Supports 11th and 10th Gen Intel Core/Pentium/Celeron processors for LGA 1200 Socket',
      details2: 'Supports DDR4 Memory, up to 5333(OC) MHz',
      details3:
          'Lightning Fast Game experience: PCIe 4.0, Lightning Gen 4 x4 M.2, USB 3.2 Gen 2x2',
      price: '599',
    ),
    MotherBoardModel(
      name: 'NZXT N7-Z59XT-B1',
      imageUrl: 'https://m.media-amazon.com/images/I/41VcW+eLUQS._SL500_.jpg',
      data:
          'NZXT N7 Z590 - N7-Z59XT-B1 - Intel Z590 chipset (Supports 11th Gen CPUs) - ATX Gaming Motherboard - Integrated I/O Shield - WiFi 6E connectivity',
      details1:
          'SMART CONTROLS: The N7 Z590 includes key features from our RGB and Fan Controller, allowing intuitive control of four RGB lighting channels and seven fan channels through CAM.',
      details2:
          'STUNNING CRAFTSMANSHIP: The metal cover is available in white or black for a seamless look that blends into the background of any NZXT H Series case for a clean aesthetic.',
      details3:
          'BUILDING MADE EASIER: The N7 Z590 includes WiFi 6E connectivity and utilizes all PCI express lanes available from the CPU and chipset.',
      price: '299',
    ),
    // MotherBoardModel(
    //   imageUrl: '',
    //   data: '',
    //   price: '',
    // ),
  ];

  List<RamModel> ram = [
    RamModel(
      name: 'TEAMGROUP FLBD532G5200HC40CDC01',
      imageUrl: 'https://m.media-amazon.com/images/I/5137Ci2Te6L._SL500_.jpg',
      data:
          'TEAMGROUP T-Force Vulcan DDR5 Ram 32GB Kit 2x16GB 5200MHz CL40 Desktop Memory',
      details1:
          'DDR5 - Leading the way into a new OC generation, compatible with Intel 600 Series Chipset',
      details2: 'Sleek design and reinforced structure for better cooling',
      details3: 'Supports Intel XMP3.0 for one-click overclocking',
      details4:
          'Power management ICs (PMICs) equipped for stable, efficient power usage, and strengthened PMIC cooling design',
      price: '124.99',
    ),
    RamModel(
      name: 'Crucial Ballistix (BL2K16G32C16U4R)',
      imageUrl: 'https://m.media-amazon.com/images/I/51pSlx53oPL._SL500_.jpg',
      data:
          'Crucial Ballistix 3200 MHz DDR4 DRAM Desktop Gaming Memory Kit 32GB (16GBx2) CL16',
      details1: 'It is ideal for gamers and performance enthusiasts.',
      details2:
          'It gives an exceptional performance with a frequency Speed of 3200MHz.',
      details3:
          'The heat spreader provides superb memory cooling in extreme situations.',
      details4:
          'The desktop memory has XMP 2.0 support for trouble-free overclocking.',
      price: 'Out of Stock',
    ),
    RamModel(
      name: 'Corsair Vengeance LPX (CMK32GX4M2E3200C16)',
      imageUrl: 'https://m.media-amazon.com/images/I/41W8FzNy-zL._SL500_.jpg',
      data:
          'Corsair Vengeance LPX 32GB (2X16GB) DDR4 3200 (PC4-25600) C16 1.35V Desktop Memory',
      details1:
          'This DDR4 memory is able to deliver a high-end performance speed of 3200MHz.',
      details2:
          'Easily compatible with the latest Intel and AMD DDR4 motherboards.',
      details3:
          'This DDR4 RAM comes with CL16 CAS latency at 1.35V tested voltage.',
      details4:
          'The heat spreader provides superb memory cooling in extreme situations.',
      price: '84.95',
    ),
    RamModel(
      name: 'Kingston KF552C40BBK2-32',
      imageUrl: 'https://m.media-amazon.com/images/I/51tvmuepogL._SL500_.jpg',
      data:
          'Kingston Fury Beast 32GB 2x16GB 5200MT/s DDR5 CL40 Kit of 2 Desktop Memory',
      details1: 'Improved stablility for overclocking',
      details2: 'Increased efficiency',
      details3: 'Intel XMP 3.0-Ready and Certified',
      details4: 'Plug N Play at 5200MT/s',
      price: '150.88',
    ),
    RamModel(
      name: 'TEAMGROUP T-Force Vulcan Z (TLZGD416G3200HC16CDC01)',
      imageUrl: 'https://m.media-amazon.com/images/I/31Ew72vPtxL.jpg',
      data:
          'TEAMGROUP T-Force Vulcan Z, 16GB (2 x 8GB) DDR4-3200MHz CL16 Desktop Memory',
      details1: 'Overclocks at 3200 MHz speed with 16GB of capacity.',
      details2:
          'It supports Intel’s XMP 2.0 profile for fast and easy overclocking.',
      details3:
          'This DDR4 RAM comes with CL16 CAS latency at 1.35V tested voltage.',
      details4:
          'It comes with a simple design to perfectly protect the cooling module.',
      price: '43.99',
    ),
    RamModel(
      name: 'G.Skill Trident Z RGB (202715)',
      imageUrl: 'https://m.media-amazon.com/images/I/41gJbPx8prL.jpg',
      data:
          'G.SKILL TridentZ RGB Series, 16GB (2 x 8GB) DDR4-3200MHz 288-Pin CL16 Desktop Memory',
      details1: 'This desktop memory has 16-18-18-38 timing.',
      details2:
          'This DDR4 RAM comes with CL16 CAS latency at 1.35V tested voltage.',
      details3: 'It comes with unique heatsink design with vibrant RGB LEDs.',
      details4:
          'This DDR4 RAM is specifically engineered for the Intel based platforms.',
      price: '68.99',
    ),
    RamModel(
      name: 'Corsair CMT64GX5M2B5200C40',
      imageUrl: 'https://m.media-amazon.com/images/I/51oTkTi6GrL._SL500_.jpg',
      data:
          'Corsair DOMINATOR PLATINUM RGB DDR5 64GB (2x32GB) 5200MHz C40 Intel Optimized Desktop Memory',
      details1:
          'Welcome to the Cutting-Edge of Performance: Push the limits of your system like never before with DDR5 memory, unlocking even faster frequencies, greater capacities, and better performance.',
      details2:
          'Do it All, and Do it Faster: As modern CPUs feature more and more cores, the unprecedented speed of DDR5 ensures your high-end CPU gets data quickly, enabling faster processing, rendering, and buffering than ever before.',
      details3:
          'Onboard Voltage Regulation: Makes for easier, finely-tuned, and more stable overclocking through CORSAIR iCUE software than ever.',
      details4:
          'Patented CORSAIR DHX Cooling: Keeps DDR5 temperatures down by cooling both the ICs and the ground plane of the PCB itself with its own dedicated heatspreader, ensuring high performance even under extreme loads.',
      price: '299.99',
    ),
    RamModel(
      name: 'Lexar LD5CU016G-R5200GD2A',
      imageUrl: 'https://m.media-amazon.com/images/I/41XoPGPM5YL._SL500_.jpg',
      data:
          'Lexar ARES 32GB Kit 16GBx2 DDR5 5200 MHz OC DRAM Desktop Memory for Gaming',
      details1:
          'Experience next-generation DDR5 performance at 5200, more than 1.63x faster than DDR4',
      details2:
          'Designed with on-die ECC for improved stability of overclocking',
      details3: 'Supports Intel XMP 3.0 and overclocks your DDR5 memory',
      details4:
          'Premium heat spreader design combining bold style and cooling functionality',
      price: '369.99',
    ),
    RamModel(
      name: 'XPG AX5U5200C3816G-DCLABK',
      imageUrl: 'https://m.media-amazon.com/images/I/41y8zQptUJL._SL500_.jpg',
      data:
          'XPG Lancer DDR5 5200MHz 32GB (2x16GB) CL38-38-38 UDIMM 288-Pins Desktop SDRAM Memory RAM Kit',
      details1: 'Next-Gen DDR5 with 5200MT/s frequencies CL38-38-38',
      details2: 'DDR5 ram offers up to double the capacity compares to DDR4',
      details3:
          'On-die ECC (Error Correcting Code) is used to provide better computer stability and reliability',
      details4:
          'DDR5 ram offers lower power consumption than the previous generations',
      price: '202.82',
    ),
    // RamModel(
    //   imageUrl: '',
    //   data: '',
    //   price: '',
    // ),
  ];

  List<PsuModel> psu = [
    PsuModel(
      name: 'EVGA 220-G6-0850-X1',
      imageUrl: 'https://m.media-amazon.com/images/I/41lMkfJbQkS._SL500_.jpg',
      data:
          'EVGA SuperNOVA 850 G6, 80 Plus Gold 850W, Fully Modular, Eco Mode with FDB Fan, 10 Year Warranty, Includes Power ON Self Tester, Compact 140mm Size, Power Supply 220-G6-0850-X1',
      details1:
          '80 PLUS Gold certified, with 91% efficiency or higher under typical loads',
      details2:
          '100% Japanese Capacitors, Fully Modular to reduce clutter and improve airflow',
      details3:
          'Full-bridge LLC Resonant Converter and DC-DC design leads to tight voltage regulation and extremely low ripple & noi',
      price: '176.99',
    ),
    PsuModel(
      name: 'Corsair RMx (2018) (CP-9020178-NA)',
      imageUrl: 'https://m.media-amazon.com/images/I/51GM3nMRb3L.jpg',
      data:
          'Corsair RMX Series (RM650X), 80+ Gold Certified 650W Fully Modular Power Supply',
      details1:
          '80 PLUS Gold certified for lower power consumption, less noise and cooler temperatures',
      details2:
          'Tuned for low noise operation even at full load. Compatibility-ATX12V v2.4 and EPS 2.92 standards',
      details3:
          'Zero RPM fan mode for near-silent operation at low to medium loads',
      price: '219.99',
    ),
    PsuModel(
      name: 'Corsair RMx (2018) (CP-9020188-NA)',
      imageUrl: 'https://m.media-amazon.com/images/I/51Yh0a9M2lL.jpg',
      data:
          'Corsair RM850X White Series, 80+ Gold Certified 850W Fully Modular Power Supply',
      details1:
          '80+ gold Certified high efficiency operation for lower power consumption less noise and cooler temperatures',
      details2:
          'Tuned for Low noise operation a specially set fan curve ensures that even at full load fan noise is kept to a minimum',
      details3:
          'Zero rpm fan mode at Low and medium loads the cooling fan switches off entirely for near-silent operation',
      price: '249',
    ),
    PsuModel(
      name: 'Thermaltake Toughpower PF1 (PS-TPD-0850FNFAPU-1)',
      imageUrl: 'https://m.media-amazon.com/images/I/518z1uy+zbL.jpg',
      data:
          'Thermaltake Toughpower PF1 850W 80+ Platinum Single Side SMD Compact Design Ultra Quiet 120mm Hydraulic Bearing Smart Zero Fan Full Modular Power Supply',
      details1:
          '[80+ PLATINUM and Intel C6/C7 STATES READY] - Deliver up to 90% efficiency, PF1 Series optimized to work with all generations of Intel',
      details2:
          '[ULTRA QUIET 120mm HYDRAULIC BEARING FAN] - Self-lubricated hydraulic Bearing PWM fan superior cooling performance and near silent operation',
      details3:
          '[SMART ZERO FAN] - Auto-regulated fan speed based on power consumption for a quiet and efficient operation. Fan works only when PSU work load goes over 30%. A switch At the back of the PSU can be turned off to have the fan spun constantly',
      price: '149.99',
    ),
    PsuModel(
      name: 'ARESGAME AGV500',
      imageUrl: 'https://m.media-amazon.com/images/I/51OWaUfDkyL._SL500_.jpg',
      data: 'ARESGAME Power Supply 500W 80+ Bronze Certified PSU',
      details1: '500w ATX gaming power supply',
      details2:
          '80 plus Bronze certified, with 85% efficiency or higher and very stable voltage output',
      details3: 'All cables are black and not ketchup and mustard colored',
      price: 'Out of Stock',
    ),
    PsuModel(
      name: 'Seasonic FOCUS SGX (FOCUS SGX-500)',
      imageUrl: 'https://m.media-amazon.com/images/I/51NPKOoEuXL.jpg',
      data:
          'Seasonic Focus SGX-500, 80+ Gold Certified 500W SFX-L Power Supply with Fan Control in Fanless, Silent, and Cooling Mode',
      details1: 'COMPACT SIZE: 125 mm (L) x 125 mm (W) x 63.5 mm (H).',
      details2:
          'FULL MODULAR: Use only the cables you need to reduce clutter to maximize airflow for a better ventilated system.',
      details3:
          '80 PLUS GOLD: Less energy gets wasted during power conversion; Cut down your electricity usage and be Eco-Friendly.',
      price: '99.99 (Used)',
    ),
    PsuModel(
      name: 'Be Quiet! Pure Power 11 (BN297)',
      imageUrl: 'https://m.media-amazon.com/images/I/51Lpzml7OuL.jpg',
      data:
          'be quiet! Pure Power 11, 80 Plus Gold Certified 500W Modular Power Supply',
      details1: '80 PLUS Gold efficiency (up to 92%)',
      details2: 'Two strong 12V-rails',
      details3:
          'Stable operation thanks to Active Clamp and Synchronous Rectifier (SR) technology',
      price: '176',
    ),
    PsuModel(
      name: 'Rosewill Glacier 500M',
      imageUrl: 'https://m.media-amazon.com/images/I/51+PnEuR1TL.jpg',
      data:
          'Rosewill Computer Modular Power Supply/PSU, Glacier Series 500 Watt 80 Plus Bronze Certified PSU with Silent 135mm Fan with Auto Fan Speed Control',
      details1: 'Wattage: 500W',
      details2: '80 PLUS BRONZE Certified',
      details3: 'Active-PFC with auto AC-input voltage adjustment(110-240V)',
      price: '49.99',
    ),
    // PsuModel(
    //   name: 'AeroCool Integrator (ACP-I500HG)',
    //   imageUrl: 'https://m.media-amazon.com/images/I/512cLUSfKgL.jpg',
    //   data: 'AEROCOOL Integrator, 80+ Bronze Certified 500W Power ATX Supply',
    //   details1: '',
    //   details2: '',
    //   details3: '',
    //   details4: '',
    //   price: 'Out of Stock',
    // ),
    // PsuModel(
    //   imageUrl: '',
    //   data: '',
    //   price: '',
    // ),
  ];

  List<GpuModel> gpu = [
    GpuModel(
      name: 'Gigabyte GeForce GTX 1660 Super (GV-N166SOC-6GD)',
      imageUrl: 'https://m.media-amazon.com/images/I/51hDLWGA0AL.jpg',
      data:
          'Gigabyte GeForce GTX 1660 Super OC 6G Graphics Card, 2X Windforce Fans, 6GB 192-bit GDDR6, Video Card',
      details1:
          'Six gigabyte DDR6 memory will make you enjoy the extensive graphics quality of this card.',
      details2:
          'It comes with windforce 2x cooling system with alternate spinning fans.',
      details3: 'This card has a memory interface of 192-bit.',
      details4:
          '3 display outputs give you the freedom to set up a high resolution multi display gaming setup.',
      price: '361',
    ),
    GpuModel(
      name: 'MSI GeForce RTX 2060 Super (RTX 2060 Super Ventus GP OC)',
      imageUrl: 'https://m.media-amazon.com/images/I/514-8JqnFXL.jpg',
      data:
          'MSI Gaming GeForce RTX 2060 Super 8GB GDRR6 256-Bit HDMI/DP G-Sync Turing Architecture Overclocked Graphics Card',
      details1: 'Chipset: NVIDIA GeForce RTX 2060 Super',
      details2: 'Boost Clock: 1665 MHz',
      details3: 'Video Memory: 8GB GDDR6',
      details4: 'Memory Interface: 256-bit',
      price: '379.99',
    ),
    GpuModel(
      name: 'EVGA RTX 2080 Ti XC Ultra (11G-P4-2383-KR)',
      imageUrl: 'https://m.media-amazon.com/images/I/41Cm+dQ4dpL._SL500_.jpg',
      data:
          'EVGA GeForce RTX 2080 Ti XC ULTRA GAMING, 11GB GDDR6, Dual HDB Fans & RGB LED Graphics Card',
      details1:
          '1350Mhz and 1650Mhz are the base and boost clock speeds, respectively.',
      details2:
          'The Dual HDB fans offer higher performance cooling and much quieter acoustic noise.',
      details3:
          'It supports G-Sync technology for eliminating tearing and stuttering.',
      details4:
          'The adjustable RGB LED offers configuration options for all your PC lighting needs.',
      price: '799.99',
    ),
    GpuModel(
      name: 'MSI GeForce RTX 3050 GAMING X 8G (G3050GX8)',
      imageUrl: 'https://m.media-amazon.com/images/I/61kZbhbH7mL._SL500_.jpg',
      data:
          'MSI Gaming GeForce RTX 3050 8GB GDDR6 128-Bit HDMI/DP PCIe 4 Torx Twin Fans Ampere OC Graphics Card (RTX 3050 Gaming X 8G)',
      details1: 'Chipset: GeForce RTX 3050',
      details2: 'Video Memory: 8GB GDDR6',
      details3: 'Memory Interface: 128-bit',
      details4: 'Output: DisplayPort x 3 (v1.4a) / HDMI 2.1 x 1',
      price: '309.99',
    ),
    GpuModel(
      name: 'Gigabyte GV-N306TGAMING OC-8GD REV2.0',
      imageUrl: 'https://m.media-amazon.com/images/I/416MoOlrTnL._SL500_.jpg',
      data:
          'GIGABYTE GeForce RTX 3060 Ti Gaming OC 8G (REV2.0) Graphics Card, 3X WINDFORCE Fans, LHR, 8GB 256-bit GDDR6, GV-N306TGAMING OC-8GD REV2.0 Video Card',
      details1: 'NVIDIA Ampere Streaming Multiprocessors',
      details2: '2nd Generation RT Cores',
      details3: '3rd Generation Tensor Cores',
      details4: 'Powered by GeForce RTX 3060 Ti',
      price: '439.99',
    ),
    GpuModel(
      name: 'EVGA GeForce RTX 3090 Ti FTW3 (24G-P5-4981-KR)',
      imageUrl: 'https://m.media-amazon.com/images/I/51oxQ4ghe+L._SL500_.jpg',
      data:
          'EVGA GeForce RTX 3090 Ti FTW3 Black Gaming, 24G-P5-4981-KR, 24GB GDDR6X, iCX3, ARGB LED, Backplate, Free eLeash',
      details1: 'Real Boost Clock: 1860 MHz; Memory Detail: 24576 MB GDDR6X.',
      details2:
          'Real-Time RAY TRACING in games for cutting-edge, hyper-realistic graphics.',
      details3:
          'Vapor Chamber Cooling with Triple Fans + 9 iCX3 thermal sensors offer higher performance cooling and much quieter acoustic noise.',
      details4: 'All-Metal Die-Cast Backplate, Pre-Installed & Adjustable ARGB',
      price: '2,725.69',
    ),
    // GpuModel(
    //   imageUrl: '',
    //   data: '',
    //   price: '',
    // ),
  ];

  final cn = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 45.0,
              ),
              SearchBarAnimation(
                textEditingController: cn,
                isOriginalAnimation: false,
                buttonBorderColour: Colors.black45,
                buttonWidget: const Icon(Icons.search),
                onFieldSubmitted: (String value) {
                  debugPrint('onFieldSubmitted value $value');
                },
                secondaryButtonWidget: const Icon(Icons.cancel),
                trailingWidget: const Icon(Icons.search),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Create A High Performance Pc',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text(
                    'Premium Parts will help you to create a high-performance PC that meets your specific requirements',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'CPU',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, CpuViewAllScreen.screenRoute);
                        },
                        child: const Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 199.0,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          buildCpuItem(processors[index]),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 20.0,
                      ),
                      itemCount: processors.length,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Mother Board',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, MotherBoardViewAllScreen.screenRoute);
                        },
                        child: const Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 199.0,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          buildMotherBoardItem(motherBoard[index]),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 20.0,
                      ),
                      itemCount: motherBoard.length,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Ram',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RamViewAllScreen.screenRoute);
                        },
                        child: const Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 199.0,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildRamItem(ram[index]),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 20.0,
                      ),
                      itemCount: ram.length,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Psu',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, PsuViewAllScreen.screenRoute);
                        },
                        child: const Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 199.0,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildPsuItem(psu[index]),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 20.0,
                      ),
                      itemCount: psu.length,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Gpu',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, GpuViewAllScreen.screenRoute);
                        },
                        child: const Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 199.0,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildGpuItem(gpu[index]),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 20.0,
                      ),
                      itemCount: gpu.length,
                    ),
                  ),
                ],
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
  Widget buildCpuItem(CpuModel processors) => MaterialButton(
        onPressed: () {
          Get.to(() => CpuDetailsScreen(), arguments: processors);
        },
        child: SizedBox(
          width: 135.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image(
                  width: 135.0,
                  height: 135.0,
                  image: NetworkImage(
                    processors.imageUrl,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              SizedBox(
                width: 165.0,
                child: Text(
                  processors.data,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    processors.price,
                    style: const TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  Widget buildMotherBoardItem(MotherBoardModel motherBoard) => MaterialButton(
        onPressed: () {
          Get.to(() => MotherBoardDetailsScreen(), arguments: motherBoard);
        },
        child: SizedBox(
          width: 135.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image(
                  width: 135.0,
                  height: 135.0,
                  image: NetworkImage(
                    motherBoard.imageUrl,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              SizedBox(
                width: 165.0,
                child: Text(
                  motherBoard.data,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    motherBoard.price,
                    style: const TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  Widget buildRamItem(RamModel ram) => MaterialButton(
        onPressed: () {
          Get.to(() => RamDetailsScreen(), arguments: ram);
        },
        child: SizedBox(
          width: 135.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image(
                  width: 135.0,
                  height: 135.0,
                  image: NetworkImage(
                    ram.imageUrl,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              SizedBox(
                width: 165.0,
                child: Text(
                  ram.data,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    ram.price,
                    style: const TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  Widget buildPsuItem(PsuModel psu) => MaterialButton(
        onPressed: () {
          Get.to(() => PsuDetailsScreen(), arguments: psu);
        },
        child: SizedBox(
          width: 135.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image(
                  width: 135.0,
                  height: 135.0,
                  image: NetworkImage(
                    psu.imageUrl,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              SizedBox(
                width: 165.0,
                child: Text(
                  psu.data,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    psu.price,
                    style: const TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  Widget buildGpuItem(GpuModel gpu) => MaterialButton(
        onPressed: () {
          Get.to(() => GpuDetailsScreen(), arguments: gpu);
        },
        child: SizedBox(
          width: 135.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image(
                  width: 135.0,
                  height: 135.0,
                  image: NetworkImage(
                    gpu.imageUrl,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              SizedBox(
                width: 165.0,
                child: Text(
                  gpu.data,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    gpu.price,
                    style: const TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
