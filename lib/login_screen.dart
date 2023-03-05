import 'package:flutter/material.dart';
import 'package:myproject/Navigatorbar_screen.dart';
import 'package:myproject/Signup.dart';

class LoginScreen extends StatelessWidget {
  static const String screenRoute = 'Login Screen';
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  // void login(String email, password) async
  // {
  //   try {
  //     Response response = await post(Uri.parse('127.0.0.1:8000/api/login'),
  //         body: {'email': email, 'password': password});
  //     if (response.statusCode == 200) {
  //       print('account login successfully');
  //     } else {
  //       print('failed');
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  'https://i.ibb.co/H7S2PSc/New.png',
                  width: 200,
                  height: 200,
                ),
                // Image.asset(
                //   'assets/images/New.png',
                //   width: 170,
                //   height: 150,
                // ),
                const SizedBox(
                  height: 20,
                ),

                // Text(
                //   'Login',
                //   style: TextStyle(
                //     fontSize: 40.0,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
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
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Navigator.pushNamed(
                        //     context, ForgotPasswordScreen.screenRoute);
                      },
                      child: const Text(
                        "Forgot your password?",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 12.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 1),
                MaterialButton(
                  minWidth: 350,
                  height: 50,
                  color: Colors.blue[900],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  onPressed: () {
                    Navigator.pushNamed(context, Navigationbar.screenRoute);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't you have an account?",
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignupScreen.screenRoute);
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.blue[900]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
