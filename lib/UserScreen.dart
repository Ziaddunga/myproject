import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'login_screen.dart';

class UserScreen extends StatelessWidget {
  static const String screenRoute = 'UserScreen';
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white.withOpacity(0),
      //   elevation: 0.0,
      //   leading: IconButton(
      //     color: Colors.blue[900],
      //     onPressed: () {},
      //     icon: Icon(
      //       Icons.arrow_back,
      //     ),
      //   ),
      // ),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: const [],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 35),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 40.0,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/OIP.W4Okg3KIP4R9K068emy_iAHaEV?w=292&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'AAA RZ',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                        Text(
                          'AAARZ123@gmail.com',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Edit profile',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            // onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                            ),
                            onPressed: () {},
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Favorites',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 33.0,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          start: 55.0,
                          end: 35.0,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 1.0,
                          color: Colors.grey[300],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.headset_mic_outlined,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Customer Support',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 32.0,
                          ),
                          // MaterialButton(
                          //   onPressed: () {},
                          //   child: Icon(
                          //     color: Colors.blue,
                          //     Icons.arrow_forward,
                          //   ),
                          // ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          start: 55.0,
                          end: 35.0,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 1.0,
                          color: Colors.grey[300],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.star_border_outlined,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Rate Our App',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 63.0,
                          ),
                          // MaterialButton(
                          //   onPressed: () {},
                          //   child: Icon(

//     color: Colors.blue,
                          //     Icons.arrow_forward,
                          //   ),
                          // ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          start: 55.0,
                          end: 35.0,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 1.0,
                          color: Colors.grey[300],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Change Password',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 63.0,
                          ),
                          // MaterialButton(
                          //   onPressed: () {},
                          //   child: Icon(
                          //     color: Colors.blue,
                          //     Icons.arrow_forward,
                          //   ),
                          // ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          start: 55.0,
                          end: 35.0,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 1.0,
                          color: Colors.grey[300],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, LoginScreen.screenRoute);
                            },
                            icon: const Icon(
                              Icons.logout,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          TextButton(
                            onPressed: () {
                              GetStorage().remove('token');
                              Navigator.pushReplacementNamed(
                                  context, LoginScreen.screenRoute);
                            },
                            child: const Text(
                              'Log out',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 23.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
