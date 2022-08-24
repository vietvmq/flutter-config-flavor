import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:package_info_plus/package_info_plus.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  final packageInfo = await PackageInfo.fromPlatform();
  return runApp(
    MyApp(packageInfo: packageInfo),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.packageInfo,
  }) : super(key: key);

  final PackageInfo packageInfo;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.yellow,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  const Text(
                    'Config',
                  ),
                  Center(
                    child: Text(
                      FlutterConfig.get("APP_NAME"),
                    ),
                  ),
                  Center(
                    child: Text(
                      FlutterConfig.get("APP_BUNDLE_ID"),
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
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  const Text(
                    'Check',
                  ),
                  Center(
                    child: Text(
                      packageInfo.appName,
                    ),
                  ),
                  Center(
                    child: Text(
                      packageInfo.packageName,
                    ),
                  ),
                  Center(
                    child: Text(
                      packageInfo.version,
                    ),
                  ),
                  Center(
                    child: Text(
                      packageInfo.version,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
