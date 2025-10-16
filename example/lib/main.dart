import 'package:flutter/material.dart';
import 'package:premium_toast_flutter/premium_toast_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: PremiumToastFlutterDemo(),
    );
  }
}

class PremiumToastFlutterDemo extends StatelessWidget {
  const PremiumToastFlutterDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Success Toast"),
              onPressed: () {
                PremiumToastFlutter.successToast(
                  context,
                  title: "Well Done!",
                  subtitle: "Your message has been sent successfully",
                  toastDuration: const Duration(seconds: 3),
                );
              },
            ),
            ElevatedButton(
              child: const Text("Error Toast"),
              onPressed: () {
                PremiumToastFlutter.errorToast(
                  context,
                  title: "Oops!",
                  subtitle: "Some Error has occurred",
                  toastDuration: const Duration(seconds: 3),
                );
              },
            ),
            ElevatedButton(
              child: const Text("Alert Toast"),
              onPressed: () {
                PremiumToastFlutter.alertToast(
                  context,
                  title: "Alert!",
                  subtitle: "There is some alert!",
                  toastDuration: const Duration(seconds: 3),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
