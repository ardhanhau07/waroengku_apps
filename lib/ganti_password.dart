import 'package:flutter/material.dart';
import 'package:waroengku/home_page.dart';
import 'package:waroengku/login_page.dart';

class GantiPassword extends StatefulWidget {
  const GantiPassword({super.key});

  @override
  State<GantiPassword> createState() => _GantiPasswordState();
}

class _GantiPasswordState extends State<GantiPassword> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            elevation: 0,
            leading: ElevatedButton(
                // style: ButtonStyle(backgroundColor: Color(Colors.transparent)),
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
          padding: EdgeInsets.fromLTRB(24, 30, 24, 0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: 176 - 24),
                child: Text(
                  'Ganti Password',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 39,
              ),
              Container(
                padding: EdgeInsets.only(left: 24, right: 238),
                child: Text('Password Lama'),
              ),
              Container(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: TextField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Masukkan Password Lama Anda',
                      hintStyle: TextStyle(fontWeight: FontWeight.w600)),
                ),
              ),
              Container(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.only(left: 24, right: 238),
                child: Text('Password Baru'),
              ),
              Container(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: TextField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Masukkan Password Baru Anda',
                      hintStyle: TextStyle(fontWeight: FontWeight.w600)),
                ),
              ),
              Container(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.only(left: 24, right: 238),
                child: Text('Ulangi Baru'),
              ),
              Container(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: TextField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Ulangi Password Baru Anda',
                      hintStyle: TextStyle(fontWeight: FontWeight.w600)),
                ),
              ),
              Container(
                height: 60,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                width: 327,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text('Buat'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff2613ff),
                      shadowColor: Colors.lightBlue),
                ),
              )
            ],
          ),
        )));
  }
}
