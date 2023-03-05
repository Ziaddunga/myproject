import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  static const String screenRoute = 'Signup Screen';
  var UsernameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0.0,
        leading: IconButton(
          color: Colors.blue[900],
          onPressed: () {
            // Navigator.pushNamed(context, LoginScreen.screenRoute);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 310,
                    child: TextFormField(
                      controller: UsernameController,
                      keyboardType: TextInputType.name,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      onChanged: (String value) {
                        print(value);
                      },
                      decoration: InputDecoration(
                        hintText: "Username",
                        prefixIcon: const Icon(Icons.people),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   width: 20.0,
                  // ),
                  // Container(
                  //   width: 125.0,
                  //   child: TextFormField(
                  //     controller: lastNameController,
                  //     keyboardType: TextInputType.name,
                  //     onFieldSubmitted: (String value) {
                  //       print(value);
                  //     },
                  //     onChanged: (String value) {
                  //       print(value);
                  //     },
                  //     decoration: const InputDecoration(
                  //       labelText: 'Last Name',
                  //       border: OutlineInputBorder(),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: 310,
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: const Icon(Icons.mail),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              // const SizedBox(
              //   height: 20.0,
              // ),
              Container(
                width: 310,
                child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: 310,
                child: TextFormField(
                  controller: confirmPasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              MaterialButton(
                minWidth: 310,
                height: 50,
                color: Colors.blue[900],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                onPressed: () {
                  //     Navigator.pushNamed(context, Navigationbar.screenRoute);
                  // todo login
                },
                child: Text(
                  'Signin',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 37.0,
              // ),
              // Container(
              //   width: 270.0,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Container(
              //         width: 82.0,
              //         height: 3.0,
              //         color: Colors.grey[500],
              //       ),
              //       const Padding(
              //         padding: EdgeInsets.symmetric(horizontal: 10.0),
              //         child: Text(
              //           'or continue with',
              //           style: TextStyle(
              //             fontSize: 12.0,
              //             color: Colors.black,
              //           ),
              //         ),
              //       ),
              //       Container(
              //         width: 82.0,
              //         height: 3.0,
              //         color: Colors.grey[500],
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 20.0,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     IconButton(
              //       onPressed: () {},
              //       icon: const Icon(
              //         Icons.facebook,
              //       ),
              //     ),
              //     IconButton(
              //       onPressed: () {},
              //       icon: const Icon(
              //         Icons.g_mobiledata,
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
