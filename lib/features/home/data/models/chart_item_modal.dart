import 'package:flutter/material.dart';

class ChartItemModal {
  final String title;
  final String precintage;
  final Color? dotColor;

  ChartItemModal({
    required this.title,
    required this.precintage,
    this.dotColor,
  });
}
