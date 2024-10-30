import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:users_indriver_app/auth/signin_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  if(Platform.isAndroid)
  {
    await Firebase.initializeApp(
      name: "indriver-clone-7a1a8",
      options: const FirebaseOptions(
          apiKey: "AIzaSyAsWdjVC1yiMZJ5YEpcA1YFrzZCRabUoLU",
          authDomain: "indriver-clone-7a1a8.firebaseapp.com",
          projectId: "indriver-clone-7a1a8",
          storageBucket: "indriver-clone-7a1a8.appspot.com",
          messagingSenderId: "1013570808086",
          appId: "1:1013570808086:web:e0651929ffedb6d91a0837",
          measurementId: "G-17ZGTGC603"
      )
    );
  }
  else
  {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Users App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignInPage(),
    );
  }
}
