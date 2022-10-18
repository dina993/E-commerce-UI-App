import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screen/home/home_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ));
}
