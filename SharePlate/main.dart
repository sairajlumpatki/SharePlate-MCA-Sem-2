import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:registr_login/Routes/router_config.dart';
import 'package:registr_login/welcomepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(WelcomePage());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser:
          NyAppRouter.returnRouter(false).routeInformationParser,
      routerDelegate: NyAppRouter.returnRouter(false).routerDelegate,
    );
  }
}
