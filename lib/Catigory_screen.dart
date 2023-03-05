import 'package:flutter/material.dart';
import 'package:myproject/psuViewAll_screen.dart';
import 'package:myproject/ramViewAll_screen.dart';

import 'cpuViewAll_screen.dart';
import 'gpuViewAll_screen.dart';
import 'motherBoardViewAll_screen.dart';

class CategoryScreen extends StatelessWidget {
  static const String screenRoute = 'Category Screen';
  const CategoryScreen({Key? key}) : super(key: key);

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
                          onPressed: () {},
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
                'Categories',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 16.0,
                          ),
                          Text(
                            'Cpu',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, CpuViewAllScreen.screenRoute);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: const Image(
                            width: 140.0,
                            height: 140.0,
                            image: NetworkImage(
                              'https://thumbs.dreamstime.com/b/computer-chip-icon-flat-style-circuit-board-vector-illustration-white-isolated-background-cpu-processor-business-concept-162842065.jpg',
                              //https://th.bing.com/th/id/OIP.lP8fvFaZ2WszjnKCLPVm3gAAAA?pid=ImgDet&w=393&h=340&rs=1
                              //https://th.bing.com/th/id/R.ebf2e9cbf0f9ad0e51c5330182ab3fa7?rik=gCLlJL7i7wPWbQ&riu=http%3a%2f%2fprojectorstore.in%2fwp-content%2fuploads%2f2021%2f02%2fAnyConv.com__LS-418-5.jpg&ehk=UdRNAnCalXH%2fVKoesRLw%2bCaTNFSAxSacdtWM6%2f0kWe4%3d&risl=&pid=ImgRaw&r=0
                              //https://pngimage.net/wp-content/uploads/2018/05/cpu-gamer-png-7.png
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 8.7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 16.0,
                          ),
                          Text(
                            'Mother Board',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, MotherBoardViewAllScreen.screenRoute);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: const Image(
                            width: 140.0,
                            height: 140.0,
                            image: NetworkImage(
                              'https://pngimage.net/wp-content/uploads/2018/05/cpu-gamer-png-7.png',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 16.0,
                          ),
                          Text(
                            'Ram',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RamViewAllScreen.screenRoute);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: const Image(
                            width: 140.0,
                            height: 140.0,
                            image: NetworkImage(
                              'https://th.bing.com/th/id/OIP.taj35pkDJdPq9OWijK1yaAHaHa?pid=ImgDet&rs=1',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 8.7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 16.0,
                          ),
                          Text(
                            'Gpu',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, GpuViewAllScreen.screenRoute);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: const Image(
                            width: 140.0,
                            height: 140.0,
                            image: NetworkImage(
                              'https://th.bing.com/th/id/R.2417476713a30d06f4100c576b66ec46?rik=ActP5zHYyG40wA&pid=ImgRaw&r=0',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 16.0,
                          ),
                          Text(
                            'Psu',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, PsuViewAllScreen.screenRoute);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: const Image(
                            width: 140.0,
                            height: 140.0,
                            image: NetworkImage(
                              'https://th.bing.com/th/id/OIP.lP8fvFaZ2WszjnKCLPVm3gAAAA?pid=ImgDet&w=393&h=340&rs=1',
                              //https://th.bing.com/th/id/OIP.lP8fvFaZ2WszjnKCLPVm3gAAAA?pid=ImgDet&w=393&h=340&rs=1
                              //https://th.bing.com/th/id/R.ebf2e9cbf0f9ad0e51c5330182ab3fa7?rik=gCLlJL7i7wPWbQ&riu=http%3a%2f%2fprojectorstore.in%2fwp-content%2fuploads%2f2021%2f02%2fAnyConv.com__LS-418-5.jpg&ehk=UdRNAnCalXH%2fVKoesRLw%2bCaTNFSAxSacdtWM6%2f0kWe4%3d&risl=&pid=ImgRaw&r=0
                              //https://pngimage.net/wp-content/uploads/2018/05/cpu-gamer-png-7.png
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 8.7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 16.0,
                          ),
                          Text(
                            'Case',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: const Image(
                            width: 140.0,
                            height: 140.0,
                            image: NetworkImage(
                              'https://pngimage.net/wp-content/uploads/2018/05/cpu-gamer-png-7.png',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 16.0,
                          ),
                          Text(
                            'Storage',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: const Image(
                            width: 140.0,
                            height: 140.0,
                            image: NetworkImage(
                              'https://th.bing.com/th/id/OIP.lP8fvFaZ2WszjnKCLPVm3gAAAA?pid=ImgDet&w=393&h=340&rs=1',
                              //https://th.bing.com/th/id/OIP.lP8fvFaZ2WszjnKCLPVm3gAAAA?pid=ImgDet&w=393&h=340&rs=1
                              //https://th.bing.com/th/id/R.ebf2e9cbf0f9ad0e51c5330182ab3fa7?rik=gCLlJL7i7wPWbQ&riu=http%3a%2f%2fprojectorstore.in%2fwp-content%2fuploads%2f2021%2f02%2fAnyConv.com__LS-418-5.jpg&ehk=UdRNAnCalXH%2fVKoesRLw%2bCaTNFSAxSacdtWM6%2f0kWe4%3d&risl=&pid=ImgRaw&r=0
                              //https://pngimage.net/wp-content/uploads/2018/05/cpu-gamer-png-7.png
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 8.7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 16.0,
                          ),
                          Text(
                            'Screen',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: const Image(
                            width: 140.0,
                            height: 140.0,
                            image: NetworkImage(
                              'https://th.bing.com/th/id/OIP.6ufjk-mZYc4dghk04ucepQAAAA?pid=ImgDet&rs=1',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
