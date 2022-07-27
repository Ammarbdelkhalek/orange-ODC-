import 'package:flutter/material.dart';
import 'package:myapp/modules/authentecationScreens/RegisterScreen.dart';
import 'package:myapp/modules/authentecationScreens/homeScreen.dart';
import 'package:myapp/modules/authentecationScreens/loginScreen.dart';
import 'package:myapp/remote_network/Dio_Helper.dart';
import 'package:myapp/remote_network/cachHelper.dart';
import 'package:myapp/shared/component/constance.dart';

Future<void> main() async {
  runApp(const PetsApp());
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();

  token = CacheHelper.getData('token');
}

class PetsApp extends StatelessWidget {
  const PetsApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.brown),
      ),
    );
  }
}
