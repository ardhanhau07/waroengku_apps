import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:waroengku/home_page.dart';
import 'package:waroengku/location.dart';
import 'package:waroengku/profile.dart';

class TambahWarung extends StatefulWidget {
  const TambahWarung({super.key});

  @override
  State<TambahWarung> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TambahWarung> {
  int index = 3;
  void _onTap(int index) {
    if (index == 0) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => const HomePage())));
    }
    if (index == 1) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => const Location())));
    }
    if (index == 2) {
      Navigator.of(context).push(
          MaterialPageRoute(builder: ((context) => const TambahWarung())));
    }
    if (index == 3) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => const Profile())));
    }
  }

  final items = const <Widget>[
    Icon(
      Icons.home,
      size: 30,
    ),
    Icon(Icons.location_on, size: 30),
    Icon(Icons.add, size: 30),
    Icon(Icons.person, size: 30)
  ];
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      child: SafeArea(
          top: false,
          child: Scaffold(
              extendBody: true,
              body: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Color(0xffffffff)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 431 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // frame6012hRP (322:2656)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 40 * fem),
                              width: double.infinity,
                              height: 54 * fem,
                              decoration: BoxDecoration(
                                // border:  Border.all(color Color(0xffb3b3b3)),
                                color: Color(0xffffffff),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0 * fem, 4 * fem),
                                    blurRadius: 8 * fem,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'Tambah Warung',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.0576922417 * ffem / fem,
                                    letterSpacing: -0.3923076689 * fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // frame6015UqT (322:2651)
                              margin: EdgeInsets.fromLTRB(
                                  24 * fem, 0 * fem, 24 * fem, 0 * fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextButton(
                                    // component37cRs (322:2652)
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: 40 * fem,
                                      child: TextButton(
                                        // component35YqK (I322:2652;304:3610)
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              16.5 * fem,
                                              9 * fem,
                                              16.5 * fem,
                                              9 * fem),
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            // border:  Border.all(color Color(0xff000000)),
                                            color: Color(0xfff2f2f2),
                                            borderRadius:
                                                BorderRadius.circular(8 * fem),
                                          ),
                                          child: Text(
                                            'add stall name',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.8333333333 * ffem / fem,
                                              letterSpacing:
                                                  -0.4079999924 * fem,
                                              color: Color(0xff999999),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20 * fem,
                                  ),
                                  TextButton(
                                    // component40P5F (322:2653)
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: 40 * fem,
                                      child: TextButton(
                                        // component358Hj (I322:2653;304:3623)
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              16.5 * fem,
                                              9 * fem,
                                              16.5 * fem,
                                              9 * fem),
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            // border:  Border.all(color Color(0xff000000)),
                                            color: Color(0xfff2f2f2),
                                            borderRadius:
                                                BorderRadius.circular(8 * fem),
                                          ),
                                          child: Text(
                                            'add stall picture',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.8333333333 * ffem / fem,
                                              letterSpacing:
                                                  -0.4079999924 * fem,
                                              color: Color(0xff999999),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20 * fem,
                                  ),
                                  TextButton(
                                    // component37PUZ (322:2654)
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: 40 * fem,
                                      child: TextButton(
                                        // component356tm (I322:2654;304:3610)
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(16 * fem,
                                              9 * fem, 16 * fem, 9 * fem),
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            // border:  Border.all(color Color(0xff000000)),
                                            color: Color(0xfff2f2f2),
                                            borderRadius:
                                                BorderRadius.circular(8 * fem),
                                          ),
                                          child: Text(
                                            'add stall address',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.8333333333 * ffem / fem,
                                              letterSpacing:
                                                  -0.4079999924 * fem,
                                              color: Color(0xff999999),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20 * fem,
                                  ),
                                  TextButton(
                                    // component43Lo7 (322:2655)
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: 40 * fem,
                                      child: TextButton(
                                        // component356XP (I322:2655;304:3739)
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(16 * fem,
                                              9 * fem, 16 * fem, 9 * fem),
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            // border:  Border.all(color Color(0xff000000)),
                                            color: Color(0xfff2f2f2),
                                            borderRadius:
                                                BorderRadius.circular(8 * fem),
                                          ),
                                          child: Text(
                                            'add stall description',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.8333333333 * ffem / fem,
                                              letterSpacing:
                                                  -0.4079999924 * fem,
                                              color: Color(0xff999999),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: Theme(
                data: Theme.of(context).copyWith(
                    iconTheme: const IconThemeData(color: Colors.white)),
                child: CurvedNavigationBar(
                  color: const Color(0xff2613ff),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  height: 60,
                  index: 2,
                  items: items,
                  onTap: (index) => setState(() => _onTap(index)),
                ),
              ))),
    );
  }
}
