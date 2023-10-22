import 'package:flutter/material.dart';
import 'package:login_with_bloc_/app.dart';
import 'package:login_with_bloc_/core/singleton/service_locator.dart';
import 'package:login_with_bloc_/core/singleton/shared/storage.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  await StorageRepository.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const App();
}
