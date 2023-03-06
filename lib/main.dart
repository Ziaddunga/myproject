import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:myproject/psuViewAll_screen.dart';
import 'package:myproject/ramViewAll_screen.dart';
import 'CartScreen.dart';
import 'Catigory_screen.dart';
import 'HomeScreen.dart';
import 'Navigatorbar_screen.dart';
import 'Signup.dart';
import 'UserScreen.dart';
import 'cpuViewAll_screen.dart';
import 'forgetpassword_screen.dart';
import 'gpuViewAll_screen.dart';
import 'login_screen.dart';
import 'motherBoardViewAll_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      initialRoute: GetStorage().read('token').toString().isNotEmpty
          ? Navigationbar.screenRoute
          : LoginScreen.screenRoute,
      routes: {
        Navigationbar.screenRoute: (context) => Navigationbar(),
        CategoryScreen.screenRoute: (context) => CategoryScreen(),
        CartView.screenRoute: (context) => CartView(),
        HomeScreen.screenRoute: (context) => HomeScreen(),
        UserScreen.screenRoute: (context) => UserScreen(),
        //    PinScreen.screenRoute: (context) => PinScreen(),
        LoginScreen.screenRoute: (context) => LoginScreen(),
        SignupScreen.screenRoute: (context) => SignupScreen(),
        ForgotPasswordScreen.screenRoute: (context) => ForgotPasswordScreen(),
        CpuViewAllScreen.screenRoute: (context) => CpuViewAllScreen(),
        GpuViewAllScreen.screenRoute: (context) => GpuViewAllScreen(),
        PsuViewAllScreen.screenRoute: (context) => PsuViewAllScreen(),
        RamViewAllScreen.screenRoute: (context) => RamViewAllScreen(),
        MotherBoardViewAllScreen.screenRoute: (context) =>
            MotherBoardViewAllScreen(),
      },
    );
  }
}
