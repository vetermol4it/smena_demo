import 'package:flutter/material.dart';
import 'package:smena_demo/common/application.dart';
import 'package:smena_demo/common/di/init_di.dart';

void main() {
  configureDependencies();
  runApp(const Application());
}
