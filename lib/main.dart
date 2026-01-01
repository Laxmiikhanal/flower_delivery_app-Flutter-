import 'package:flower_delivery_app/app.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'features/auth/data/models/user_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();

  // Register adapter (typeId = 1)
  if (!Hive.isAdapterRegistered(1)) {
    Hive.registerAdapter(UserModelAdapter());
  }

  // Open boxes BEFORE runApp
  await Hive.openBox<UserModel>('usersBox');
  await Hive.openBox<String>('sessionBox');

  runApp(const App());
}
