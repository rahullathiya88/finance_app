import 'package:device_preview/device_preview.dart';
import 'package:finance_app/core/themes/app_theme.dart';
import 'package:finance_app/presentation/router/app_router.dart';
import 'package:finance_app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(),
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            return Sizer(builder: (context, constraints, orientation) {
              return MaterialApp(
                builder: DevicePreview.appBuilder,
                title: Strings.appTitle,
                theme: AppTheme.lightTheme,
                darkTheme: AppTheme.darkTheme,
                debugShowCheckedModeBanner: false,
                initialRoute: AppRouter.loginScreen,
                onGenerateRoute: AppRouter.onGenerateRoute,
              );
            });
          },
        );
      },
    );
  }
}
