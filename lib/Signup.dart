import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myproject/HomeScreen.dart';
import 'package:myproject/login_screen.dart';

import 'Navigatorbar_screen.dart';

class SignupScreen extends StatelessWidget {
  static const String screenRoute = 'Signup Screen';
  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    const space = SizedBox(
      height: 20,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0.0,
        leading: IconButton(
          color: Colors.blue[900],
          onPressed: () {
            // Navigator.pushNamed(context, LoginScreen.screenRoute);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Form(
            key: _key,
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                space,
                _buildTextFormField(
                  Icons.people,
                  'user name',
                  usernameController,
                  TextInputType.name,
                ),
                space,
                _buildTextFormField(
                  Icons.email,
                  'Email',
                  emailController,
                  TextInputType.emailAddress,
                ),
                space,
                _buildTextFormField(
                  Icons.lock,
                  'Password',
                  passwordController,
                  TextInputType.visiblePassword,
                  true,
                ),
                space,
                _buildTextFormField(
                  Icons.lock,
                  'Confirm Password',
                  confirmPasswordController,
                  TextInputType.visiblePassword,
                  true,
                ),
                space,
                MaterialButton(
                  minWidth: 310,
                  height: 50,
                  color: Colors.blue[900],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  onPressed: () async {
                    await signUp();
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
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

  Future<void> signUp() async {
    if (!_key.currentState!.validate()) {
      return;
    }
    try {
      final response = await Dio(BaseOptions(
        baseUrl: 'http://192.168.1.8:80/api',
      )).post('/register', data: {
        'name': usernameController.text,
        'email': emailController.text,
        'password': passwordController.text,
        'password_confirmation': confirmPasswordController.text,
      });

      print("token: ${response.data}");
      if (response.statusCode == 201) {
        Get.to(() => bottomNavigation());
      }
    } on DioError catch (e) {
      print(e);
    }
  }
}
