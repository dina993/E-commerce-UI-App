import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container closeActivity() {
  return Container(
    child: GestureDetector(
      onTap: () => Get.back(),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: CircleAvatar(backgroundColor: Colors.grey[50] ,
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black38,
          ),
        ),
      ),
    ),
  );
}

const borderRadius = BorderRadius.all(
  const Radius.circular(10.0),
);
