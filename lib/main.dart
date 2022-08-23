import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();

  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                FlutterConfig.get("APP_NAME"),
              ),
            ),
            Center(
              child: Text(
                FlutterConfig.get("APP_ID"),
              ),
            ),
            Center(
              child: Text(
                FlutterConfig.get("VER_NAME"),
              ),
            ),
            Center(
              child: Text(
                FlutterConfig.get("VER_CODE"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
