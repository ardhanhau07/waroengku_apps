import 'package:flutter/material.dart';
import 'package:waroengku/home_page.dart';
import 'package:waroengku/location.dart';
import 'package:waroengku/login_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:waroengku/tambah_warung.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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

  int index = 2;
  @override
  Widget build(BuildContext context) {
    final items = const <Widget>[
      Icon(
        Icons.home,
        size: 30,
      ),
      Icon(Icons.location_on, size: 30),
      Icon(Icons.add, size: 30),
      Icon(Icons.person, size: 30)
    ];
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(0 * fem, 45 * fem, 0 * fem, 21 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // frame6016bdo (322:2970)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 24 * fem),
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
                      'Profile',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.1 * ffem / fem,
                        letterSpacing: -0.4079999924 * fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
                Container(
                  // frame6018PJm (322:2965)
                  margin: EdgeInsets.fromLTRB(
                      118 * fem, 0 * fem, 118 * fem, 24 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                        width: double.infinity,
                        height: 80,
                        child: CircleAvatar(),
                      ),
                      // Container(
                      //   // ellipse12ibw (322:2966)
                      //   margin: EdgeInsets.fromLTRB(
                      //       29.5 * fem, 0 * fem, 29.5 * fem, 8 * fem),
                      //   width: double.infinity,
                      //   height: 80 * fem,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(40 * fem),
                      //     // image:  DecorationImage (
                      //     //   fit:  BoxFit.cover,
                      //     //   image:  NetworkImage (
                      //     //     [Image url]
                      //     //   ),
                      //     // ),
                      //   ),
                      // ),
                      Container(
                        // frame6017pey (322:2967)
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              // diannerussellnLu (322:2968)
                              'Dianne Russell',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.375 * ffem / fem,
                                letterSpacing: -0.4079999924 * fem,
                                color: Color(0xff000000),
                              ),
                            ),
                            Text(
                              // diannerussellgmailcomuwK (322:2969)
                              'Diannerussell@gmail.com',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.8333333333 * ffem / fem,
                                letterSpacing: -0.4079999924 * fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // frame6032rLm (322:2972)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 19 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        // component46B89 (322:2973)
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              24 * fem, 16 * fem, 227.5 * fem, 16 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              // border:  Border.all(color Color(0xffb3b3b3)),
                              ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // vuesaxlinearprofileVPj (I322:2973;323:2421)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 20.5 * fem, 0 * fem),
                                width: 24 * fem,
                                height: 24 * fem,
//   child:
// Image.network(
//   [Image url]
//   width:  24*fem,
//   height:  24*fem,
// ),
                              ),
                              Text(
                                // editprofileofK (I322:2973;323:2422)
                                'Edit Profile',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.375 * ffem / fem,
                                  letterSpacing: -0.4079999924 * fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        // component51x2R (322:2974)
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              24 * fem, 16 * fem, 212 * fem, 16 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              // border:  Border.all(color Color(0xffb3b3b3)),
                              ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // vuesaxlinearnotification573 (I322:2974;323:2583)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 20 * fem, 0 * fem),
                                width: 24 * fem,
                                height: 24 * fem,
//   child:
// Image.network(
//   [Image url]
//   width:  24*fem,
//   height:  24*fem,
// ),
                              ),
                              Text(
                                // notificationsPNd (I322:2974;323:2584)
                                'Notifications',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.375 * ffem / fem,
                                  letterSpacing: -0.4079999924 * fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        // component528b7 (322:2975)
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              26.25 * fem, 17 * fem, 233 * fem, 17 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              // border:  Border.all(color Color(0xffb3b3b3)),
                              ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // ionlanguageoutlineqVX (I322:2975;323:2638)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 22.25 * fem, 0 * fem),
                                width: 19.5 * fem,
                                height: 18 * fem,
//   child:
// Image.network(
//   [Image url]
//   width:  19.5*fem,
//   height:  18*fem,
// ),
                              ),
                              Text(
                                // languagekcV (I322:2975;323:2641)
                                'Language',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.375 * ffem / fem,
                                  letterSpacing: -0.4079999924 * fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        // component55tTo (322:2976)
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              24 * fem, 16 * fem, 276.5 * fem, 16 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              // border:  Border.all(color Color(0xffb3b3b3)),
                              ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // vuesaxlinearlikec8u (I322:2976;323:2651)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 20.5 * fem, 0 * fem),
                                width: 24 * fem,
                                height: 24 * fem,
//   child:
// Image.network(
//   [Image url]
//   width:  24*fem,
//   height:  24*fem,
// ),
                              ),
                              Text(
                                // likeXmf (I322:2976;323:2652)
                                'Like',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.375 * ffem / fem,
                                  letterSpacing: -0.4079999924 * fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        // component54UB7 (322:2977)
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              24 * fem, 16 * fem, 258.5 * fem, 16 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              // border:  Border.all(color Color(0xffb3b3b3)),
                              ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // vuesaxlineardislikenSh (I322:2977;323:2594)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 20.5 * fem, 0 * fem),
                                width: 24 * fem,
                                height: 24 * fem,
//   child:
// Image.network(
//   [Image url]
//   width:  24*fem,
//   height:  24*fem,
// ),
                              ),
                              Text(
                                // dislikeHuF (I322:2977;323:2595)
                                'Dislike',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.375 * ffem / fem,
                                  letterSpacing: -0.4079999924 * fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        // component532rq (322:2978)
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              24 * fem, 16 * fem, 244.5 * fem, 16 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              // border:  Border.all(color Color(0xffb3b3b3)),
                              ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // vuesaxlinearsetting2kXw (I322:2978;323:2630)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 20.5 * fem, 0 * fem),
                                width: 24 * fem,
                                height: 24 * fem,
//   child:
// Image.network(
//   [Image url]
//   width:  24*fem,
//   height:  24*fem,
// ),
                              ),
                              Text(
                                // settings5aD (I322:2978;323:2631)
                                'Settings',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.375 * ffem / fem,
                                  letterSpacing: -0.4079999924 * fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 327,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const LoginPage())),
                    child: Text('Log Out'),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff2613ff),
                        shadowColor: Colors.lightBlue),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
          child: CurvedNavigationBar(
            color: const Color(0xff2613ff),
            animationDuration: const Duration(milliseconds: 300),
            backgroundColor: Colors.transparent,
            height: 60,
            index: 3,
            items: items,
            onTap: (index) => setState(() => _onTap(index)),
          ),
        ));
  }
}
