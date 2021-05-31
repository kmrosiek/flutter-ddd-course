import 'package:dddcourse/infrastructure/auth/firebase_auth_facade.dart';
import 'package:dddcourse/injection.dart';
import 'package:dddcourse/presentation/core/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(AppWidget());
}
