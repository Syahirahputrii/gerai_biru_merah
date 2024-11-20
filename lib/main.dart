import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:gerai_biru_merah/screens/login.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color.fromARGB(255, 123, 0, 0), // Secondary color
            secondary: Color.fromARGB(255, 0, 68, 123), // Primary color
          ),
        ),
        home: const LoginPage()
      ),
    );
  }
}


void main() {
  runApp(const MyApp());
}
