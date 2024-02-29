import 'package:flutter/material.dart';
import 'package:login_registration_ui/Splash_screen.dart';
import 'package:login_registration_ui/last_screen.dart';
import 'package:login_registration_ui/signIn_screen.dart';
import 'package:login_registration_ui/signup_screen.dart';


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
      initialRoute: "Splash_screen()",
     routes: {
        "Splash_screen":(context)=>Splash_screen(),
       "Signup_screen":(context)=>Signup_screen(),
       "signIn_scrren":(context)=> signIn_screen (),
       "last":(context)=> last_screen (),






     },
     // theme: ThemeData(

      //  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //  useMaterial3: true,
     // ),
      home:  Splash_screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


