import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smena_demo/common/application.dart';
import 'package:smena_demo/common/di/init_di.dart';

void main() async {
  configureDependencies();
  await Hive.initFlutter();
  runApp(const Application());
}
