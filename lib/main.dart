import 'dart:io';

import 'package:flutter/material.dart';

import 'Login.dart';
import 'RouteGenerator.dart';

final ThemeData temaIOS = ThemeData(
  primaryColor: Colors.grey[200],
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xff075E54),
    secondary: const Color(0xff25D366),
  ),
);

final ThemeData temaPadrao = ThemeData(
  primaryColor: Color(0xff075E54),
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xff075E54),
    secondary: const Color(0xff25D366),
  ),
);

void main() {
  runApp(MaterialApp(
    home: Login(),
    theme: Platform.isIOS ? temaIOS : temaPadrao,
    initialRoute: "/",
    onGenerateRoute: RouteGenerator.generateRoute,
    debugShowCheckedModeBanner: false,
  ));
}
