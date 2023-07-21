import 'package:flutter/material.dart';
import 'package:waroengku/login_page.dart';
// import 'package:goog';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // double fem = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.fromLTRB(30.5, 178, 24, 80),
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
            margin: const EdgeInsets.fromLTRB(0, 0, 5.5, 72),
            width: 180,
            height: 180,
            child: Image.asset(
              'assets/images/logo.png',
              width: 180,
              height: 180,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 5.5, 93),
            constraints: const BoxConstraints(maxWidth: 315),
            child: const Text(
              'Selamat Datang di Aplikasi Waroengku',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  height: 1.4,
                  letterSpacing: -0.4,
                  color: Color(0xffffffff)),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(180.5, 0, 0, 0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Container(
                    color: Colors.transparent,
                    width: 40,
                    height: 40,
                    child: const Icon(Icons.arrow_circle_right))),
          )
        ],
      ),
    ));
  }
}
