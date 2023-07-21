import 'package:flutter/material.dart';
import 'package:waroengku/home_page.dart';
import 'package:waroengku/shared_preferences.dart';
import 'package:waroengku/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      var token = SharedPref.pref?.getString("token");

      if (token == null) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const WelcomePage()));
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const HomePage()));
      }
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    // double fem = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.fromLTRB(30.5 * fem, 178 * fem, 24 * fem, 80 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(1, 1),
                end: Alignment(-1, -1),
                colors: <Color>[Color(0xff1100cc), Color(0xff7366ff)],
                stops: <double>[0.206, 0.842])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 700,
              child: Image.asset(
                'assets/images/logo.png',
                width: 180,
                height: 180,
              ),
            )
          ],
        ),
      ),
    );
  }
}
