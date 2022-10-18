import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screen/login/login_page.dart';
import 'package:get/get.dart';

Row buildActionBar() {
  return Row(
    children: [
      Text(
        'E-Commerce App',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      Spacer(),
      GestureDetector(
        onTap: () => Get.to(LoginScreen()),
        child: Icon(
          CupertinoIcons.profile_circled,
          size: 40,
        ),
      ),
    ],
  );
}
