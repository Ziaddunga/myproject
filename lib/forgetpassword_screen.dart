import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const String screenRoute = 'ForgetPassword Screen';
  var emailController = TextEditingController();

  ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          color: Colors.blue[900],
          onPressed: () {
            //  Navigator.pushNamed(context, LoginScreen.screenRoute);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 18.0,
                color: (Colors.red),
              ),
            ),
            const SizedBox(
              height: 35.0,
            ),
            const Text(
              'Please enter your registered email to reset your password',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 40,
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
              height: 20,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     TextButton(
            //       onPressed: () {},
            //       child: const Text(
            //         "Resend",
            //         style: TextStyle(
            //           decoration: TextDecoration.none,
            //           fontSize: 14.0,
            //           color: Colors.black,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            MaterialButton(
              minWidth: 350,
              height: 50,
              color: Colors.blue[900],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              onPressed: () {
                //  Navigator.pushNamed(context, PinScreen.screenRoute);
              },
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
