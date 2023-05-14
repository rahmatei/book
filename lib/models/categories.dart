import 'package:flutter/material.dart';

class CategoryModel {
  String? title;
  String? subject;
  int? rate;
  Image? image;

  CategoryModel(
      {required this.title,
      required this.subject,
      required this.rate,
      required this.image});
}
