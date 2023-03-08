import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:myproject/HomeScreen.dart';
import 'package:myproject/Navigatorbar_screen.dart';
import 'package:myproject/Signup.dart';

class LoginScreen extends StatelessWidget {
  static const String screenRoute = 'Login Screen';
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  LoginScreen({super.key});
  final GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    const space = SizedBox(height: 20);
    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    'https://i.ibb.co/H7S2PSc/New.png',
                    width: 200,
                    height: 200,
                  ),
                  space,
                  _buildTextFormField(Icons.email, 'Email', emailController,
                      TextInputType.emailAddress),
                  space,
                  space,
                  _buildTextFormField(Icons.lock, 'Password',
                      passwordController, TextInputType.visiblePassword, true),
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
                    onPressed: () async {
                      await login();
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't you have an account?",
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, SignupScreen.screenRoute);
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
      ),
    );
  }

  Widget _buildTextFormField(iconData, title, controller, textType,
      [obsecureText]) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        keyboardType: textType,
        obscureText: obsecureText ?? false,
        validator: (value) {
          if (value!.isEmpty) {
            return 'this field is required';
          }
          if (textType == TextInputType.emailAddress && !value.isEmail) {
            return 'invalide email';
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: title,
          prefixIcon: Icon(iconData),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  Future<void> login() async {
    if (!_key.currentState!.validate()) {
      return;
    }
    try {
      final response = await Dio(BaseOptions(
        baseUrl: 'http://192.168.1.8:80/api',
      )).post('/login', data: {
        'email': emailController.text,
        'password': passwordController.text,
      });

      print("token: ${response.data}");
      if (response.statusCode == 200) {
        GetStorage().write('token', response.data['token']);
        Get.off(() => bottomNavigation());
      }
    } on DioError catch (e) {
      print(e);
    }
  }
}
