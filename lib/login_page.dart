import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:waroengku/ganti_password.dart';
import 'package:waroengku/home_page.dart';
import 'package:waroengku/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:waroengku/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isChecked = false;
  var baseUrl = 'https://3a4c-103-17-76-56.ngrok.io/signup';
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  void initState() {
    // _loadUserEmailPassword();
    super.initState();
  }

  Widget build(BuildContext context) {
    Future<void> login() async {
      var dio = Dio();
      try {
        var response = await dio.post("$baseUrl/login", data: {
          "email": emailController.text,
          "password": passwordController.text
        });
        SharedPref.pref?.setString('token', response.data["data"]["token"]);

        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const HomePage()));
      } catch (e) {
        print(e);
      }
    }

    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 38, top: 38),
              width: double.infinity,
              child: Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.4 * ffem / fem,
                    letterSpacing: -0.48 * fem,
                    color: const Color(0xff000000)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8),
              width: double.infinity,
              child: Text(
                'Email',
                style: TextStyle(
                    fontSize: 12 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.4 * ffem / fem,
                    letterSpacing: -0.24 * fem,
                    color: const Color(0xff000000)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: 'Please enter your email',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(60, 0, 0, 0))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8),
              width: double.infinity,
              child: Text(
                'Password',
                style: TextStyle(
                    fontSize: 12 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.4 * ffem / fem,
                    letterSpacing: -0.24 * fem,
                    color: const Color(0xff000000)),
              ),
            ),
            Container(
              height: 12,
            ),
            Password(passwordController: passwordController),
            Container(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Row(
                children: [
                  Row(children: [
                    Checkbox(
                        value: false,
                        onChanged: (value) {
                          value = true;
                        }),
                    const Text(
                      'Remember Me',
                      style: TextStyle(color: Colors.black),
                    ),
                    Container(
                      width: 90,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const GantiPassword()));
                        },
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(
                            color: Color(0xff2613ff),
                          ),
                        ))
                  ])
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: Container(
                    width: double.infinity,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xff2613ff),
                        borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text(
                        'Login',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 10 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.4 * ffem / fem,
                            letterSpacing: -0.2 * fem,
                            color: Color(0xffffffff)),
                      ),
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(
                        75 * fem, 0 * fem, 3.5 * fem, 0 * fem),
                    child: Text(
                      "Don't Have an accout ?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 13 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.4 * ffem / fem,
                          letterSpacing: -0.2 * fem,
                          color: const Color(0xff9d9d9d)),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        'Sign Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 13 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.4 * ffem / fem,
                            letterSpacing: -0.2 * fem,
                            color: const Color(0xff2613ff)),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _RememberMe(bool value) {
    _isChecked = value;
    SharedPreferences.getInstance().then((prefs) {
      prefs.setBool("remember_me", value);
      prefs.setString("email", emailController.text);
      prefs.setString("password", passwordController.text);
    });
    setState(() {
      _isChecked = value;
    });
  }

  void _loadUserEmailPassword() async {
    print('Load Email');
    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      var _email = _prefs.getString("email") ?? "";
      var _password = _prefs.getString("password") ?? "";
      var _rememberMe = _prefs.getBool("remember_me") ?? false;

      print(_rememberMe);
      print(_email);
      print(_password);

      if (_rememberMe) {
        setState(() {
          _isChecked = true;
        });
        emailController.text = _email ?? "";
        passwordController.text = _password ?? "";
      }
    } catch (e) {}
  }
}

class Password extends StatelessWidget {
  const Password({
    super.key,
    required this.passwordController,
  });

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: passwordController,
      decoration: const InputDecoration(
        icon: Icon(Icons.password),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        hintText: 'Please enter your password',
        hintStyle: TextStyle(
            fontWeight: FontWeight.w600, color: Color.fromARGB(60, 0, 0, 0)),
      ),
    );
  }
}
