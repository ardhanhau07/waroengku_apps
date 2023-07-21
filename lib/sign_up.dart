import 'package:flutter/material.dart';
import 'package:waroengku/home_page.dart';
import 'package:waroengku/login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            elevation: 0,
            leading: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const LoginPage()));
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ))),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(
                        23 * fem, 20 * fem, 24 * fem, 40 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 35 * fem),
                          width: double.infinity,
                          child: Text(
                            'Sign up',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.3999999364 * ffem / fem,
                              letterSpacing: -0.48 * fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // firstnameW1X (140:1242)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 8 * fem),
                          width: double.infinity,
                          child: Text(
                            'First Name',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.3999999364 * ffem / fem,
                              letterSpacing: -0.24 * fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 19 * fem),
                          child: TextField(
                            controller: firstNameController,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                hintText: 'Nama Depan Anda',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(60, 0, 0, 0))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 8 * fem),
                          width: double.infinity,
                          child: Text(
                            'Last Name',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.4 * ffem / fem,
                                letterSpacing: -0.24 * fem,
                                color: const Color(0xff000000)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 19 * fem),
                          child: TextField(
                            controller: lastNameController,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                hintText: 'Nama Belakang Anda',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(60, 0, 0, 0))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 8 * fem),
                          width: double.infinity,
                          child: Text(
                            'Email',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.4 * ffem / fem,
                                letterSpacing: -0.24 * fem,
                                color: const Color(0xff000000)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 19 * fem),
                          child: TextField(
                            controller: lastNameController,
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.email),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                hintText: 'Masukkan Email Anda',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(60, 0, 0, 0))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 8 * fem),
                          width: double.infinity,
                          child: Text(
                            'Password',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.4 * ffem / fem,
                                letterSpacing: -0.24 * fem,
                                color: const Color(0xff000000)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 19 * fem),
                          child: TextField(
                            controller: lastNameController,
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: Icon(Icons.remove_red_eye),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                hintText: 'Masukkan Password Anda',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(60, 0, 0, 0))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 40 * fem),
                          constraints: BoxConstraints(maxWidth: 265 * fem),
                          child: RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      fontSize: 12 * fem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.4 * ffem / fem,
                                      letterSpacing: -0.24 * fem,
                                      color: const Color(0xff9d9d9d)),
                                  children: [
                                TextSpan(
                                    text: 'By signing up you agree to our',
                                    style: TextStyle(
                                        fontSize: 12 * fem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.4 * ffem / fem,
                                        letterSpacing: -0.24 * fem,
                                        color: const Color(0xff9d9d9d))),
                                TextSpan(
                                    text: 'Terms & Condition',
                                    style: TextStyle(
                                        fontSize: 12 * fem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.4 * ffem / fem,
                                        letterSpacing: -0.24 * fem,
                                        color: const Color(0xff111111))),
                                TextSpan(
                                    text: 'and',
                                    style: TextStyle(
                                        fontSize: 12 * fem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.4 * ffem / fem,
                                        letterSpacing: -0.24 * fem,
                                        color: const Color(0xff9d9d9d))),
                                TextSpan(
                                    text: ' Privacy Policy ',
                                    style: TextStyle(
                                        fontSize: 12 * fem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.4 * ffem / fem,
                                        letterSpacing: -0.24 * fem,
                                        color: const Color(0xff111111))),
                              ])),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 20 * fem),
                          width: 327 * fem,
                          height: 30 * fem,
                          decoration: BoxDecoration(
                              color: Color(0xffd0ccff),
                              borderRadius: BorderRadius.circular(4 * fem)),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff2613ff)),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: Text(
                              'Continue',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.4 * ffem / fem,
                                  letterSpacing: -0.2 * fem,
                                  color: const Color(0xfff2f2f2)),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              107 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  'Already Signed Up ?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.4 * ffem / fem,
                                      letterSpacing: -0.2 * fem,
                                      color: const Color(0xff9d9d9d)),
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()));
                                  },
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        fontSize: 10 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.4 * ffem / fem,
                                        letterSpacing: -0.2 * fem,
                                        color: const Color(0xff6528f7)),
                                  ))
                            ],
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
