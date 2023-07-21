import 'package:flutter/material.dart';
import 'package:waroengku/data/warung.dart';
import 'package:waroengku/home_page.dart';
import 'package:waroengku/profile.dart';
import 'package:waroengku/tambah_warung.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dio/dio.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  int index = 1;

  final screens = [const HomePage(), const TambahWarung(), const Profile()];
  final List<Widget> warung = <Widget>[];

  // Future<List<Warung>> getData() async {
  //   var dio = Dio();
  //   var response = await dio.get('path');
  //   List<dynamic> listDinamis = response.data as List;
  //   List<Warung> listWarung =
  //       listDinamis.map((e) => Warung.fromJson(e)).toList();

  //   return listWarung;
  // }

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
    double baseWidth = 412;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Scaffold(
          extendBody: true,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Warung Sekitar',
              style: TextStyle(color: Colors.black, fontSize: 24 * fem),
            ),
            bottom: PreferredSize(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Your Location',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 2.115 * ffem / fem),
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 22 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 30),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 4 * fem, 0 * fem),
                                        width: 13.61 * fem,
                                        height: 16 * fem,
                                        child: const Icon(Icons.location_on),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Jl. Raya Solo-Jogja No. 123, Klaten Utara, Jawa Tengah',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 2.2 * ffem / fem,
                                            letterSpacing: -0.4079 * fem,
                                            color: const Color(0xff000000)),
                                      )
                                    ],
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    child: Icon(
                                      Icons.sort,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 3,
                            child: Container(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                preferredSize: const Size.fromHeight(50)),
          ),
          body: SingleChildScrollView(
//             child: Container(
//               // frame6014Wjo (322:2483)
//               width: double.infinity,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     // frame6006FSV (322:2484)
//                     padding: EdgeInsets.fromLTRB(
//                         24 * fem, 20 * fem, 24 * fem, 20 * fem),
//                     width: double.infinity,
//                     height: 120 * fem,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Color(0xffb3b3b3)),
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           // rectangle3554mfj (322:2485)
//                           margin: EdgeInsets.fromLTRB(
//                               0 * fem, 0 * fem, 16 * fem, 0 * fem),
//                           width: 140 * fem,
//                           height: 80 * fem,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8 * fem),
//                             color: Color(0xffd9d9d9),
//                             // image:  DecorationImage (
//                             //   fit:  BoxFit.cover,
//                             //   image:  NetworkImage (
//                             //     [Image url]
//                             //   ),
//                             // ),
//                           ),
//                         ),
//                         Container(
//                           // frame60053NM (322:2486)
//                           width: 171 * fem,
//                           height: double.infinity,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 // frame6003BUZ (322:2487)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0 * fem, 0 * fem, 0 * fem, 21 * fem),
//                                 width: double.infinity,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       // frame6002WWq (322:2488)
//                                       margin: EdgeInsets.fromLTRB(
//                                           0 * fem, 0 * fem, 0 * fem, 7 * fem),
//                                       width: double.infinity,
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Container(
//                                             // frame6001FjK (322:2489)
//                                             width: double.infinity,
//                                             height: 16 * fem,
//                                             child: Row(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               children: [
//                                                 Container(
//                                                   // warungmakanjengranizwo (322:2490)
//                                                   margin: EdgeInsets.fromLTRB(
//                                                       0 * fem,
//                                                       0 * fem,
//                                                       30 * fem,
//                                                       0 * fem),
//                                                   child: Text(
//                                                     'Warung Makan Jeng Rani',
//                                                     textAlign: TextAlign.center,
//                                                     style: TextStyle(
//                                                       fontSize: 10 * ffem,
//                                                       fontWeight:
//                                                           FontWeight.w600,
//                                                       height: 1.6 * ffem / fem,
//                                                       letterSpacing:
//                                                           -0.4079999924 * fem,
//                                                       color: Color(0xff000000),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   // frame15h5X (322:2491)
//                                                   margin: EdgeInsets.fromLTRB(
//                                                       0 * fem,
//                                                       2.5 * fem,
//                                                       0 * fem,
//                                                       1.5 * fem),
//                                                   padding: EdgeInsets.fromLTRB(
//                                                       4 * fem,
//                                                       0 * fem,
//                                                       4 * fem,
//                                                       0 * fem),
//                                                   height: double.infinity,
//                                                   decoration: BoxDecoration(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             20 * fem),
//                                                   ),
//                                                   child: Row(
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       Container(
//                                                         // iconfeatherstarbRo (322:2492)
//                                                         margin:
//                                                             EdgeInsets.fromLTRB(
//                                                                 0 * fem,
//                                                                 0 * fem,
//                                                                 4 * fem,
//                                                                 1 * fem),
//                                                         width: 8 * fem,
//                                                         height: 8 * fem,
// //   child:
// // Image.network(
// //   [Image url]
// //   width:  8*fem,
// //   height:  8*fem,
// // ),
//                                                       ),
//                                                       Text(
//                                                         // 7f3 (322:2493)
//                                                         '4.2',
//                                                         style: TextStyle(
//                                                           fontSize: 8 * ffem,
//                                                           fontWeight:
//                                                               FontWeight.w400,
//                                                           height: 1.3999999762 *
//                                                               ffem /
//                                                               fem,
//                                                           letterSpacing:
//                                                               -0.16 * fem,
//                                                           color:
//                                                               Color(0xff0a1406),
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                           Text(
//                                             // wgraystuticapennsylvania57867E (322:2494)
//                                             '3517 W. Gray St. Utica, Pennsylvania 57867',
//                                             style: TextStyle(
//                                               fontSize: 8 * ffem,
//                                               fontWeight: FontWeight.w300,
//                                               height: 1.3999999762 * ffem / fem,
//                                               letterSpacing: -0.16 * fem,
//                                               color: Color(0xff999999),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Text(
//                                       // kmawayMJV (322:2495)
//                                       '1.2 Km Away',
//                                       style: TextStyle(
//                                         fontSize: 8 * ffem,
//                                         fontWeight: FontWeight.w600,
//                                         height: 1.3999999762 * ffem / fem,
//                                         letterSpacing: -0.16 * fem,
//                                         color: Color(0xff000000),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // component34tpD (322:2496)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0 * fem, 0 * fem, 105 * fem, 0 * fem),
//                                 child: TextButton(
//                                   onPressed: () {},
//                                   style: TextButton.styleFrom(
//                                     padding: EdgeInsets.zero,
//                                   ),
//                                   child: Container(
//                                     width: double.infinity,
//                                     decoration: BoxDecoration(
//                                       borderRadius:
//                                           BorderRadius.circular(8 * fem),
//                                     ),
//                                     child: Row(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           // letspreviewbTj (I322:2496;298:2929)
//                                           margin: EdgeInsets.fromLTRB(0 * fem,
//                                               0 * fem, 4 * fem, 0 * fem),
//                                           child: Text(
//                                             'Let’s preview',
//                                             style: TextStyle(
//                                               fontSize: 8 * ffem,
//                                               fontWeight: FontWeight.w600,
//                                               height: 1.3999999762 * ffem / fem,
//                                               letterSpacing: -0.16 * fem,
//                                               color: Color(0xff000000),
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           // vuesaxlineararrowrighthWm (I322:2496;298:2930)
//                                           width: 12 * fem,
//                                           height: 12 * fem,
// //   child:
// // Image.network(
// //   [Image url]
// //   width:  12*fem,
// //   height:  12*fem,
// // ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     // frame6007c7w (322:2497)
//                     padding: EdgeInsets.fromLTRB(
//                         24 * fem, 20 * fem, 24 * fem, 20 * fem),
//                     width: double.infinity,
//                     height: 120 * fem,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Color(0xffb3b3b3)),
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           // rectangle355486H (322:2498)
//                           margin: EdgeInsets.fromLTRB(
//                               0 * fem, 0 * fem, 16 * fem, 0 * fem),
//                           width: 140 * fem,
//                           height: 80 * fem,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8 * fem),
//                             color: Color(0xffd9d9d9),
//                             // image:  DecorationImage (
//                             //   fit:  BoxFit.cover,
//                             //   image:  NetworkImage (
//                             //     [Image url]
//                             //   ),
//                             // ),
//                           ),
//                         ),
//                         Container(
//                           // frame6005DNd (322:2499)
//                           width: 171 * fem,
//                           height: double.infinity,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 // frame6003AHs (322:2500)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0 * fem, 0 * fem, 0 * fem, 21 * fem),
//                                 width: double.infinity,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       // frame6002h2u (322:2501)
//                                       margin: EdgeInsets.fromLTRB(
//                                           0 * fem, 0 * fem, 0 * fem, 7 * fem),
//                                       width: double.infinity,
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Container(
//                                             // frame6001Rjb (322:2502)
//                                             margin: EdgeInsets.fromLTRB(
//                                                 0.5 * fem,
//                                                 0 * fem,
//                                                 0 * fem,
//                                                 0 * fem),
//                                             width: double.infinity,
//                                             height: 16 * fem,
//                                             child: Row(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               children: [
//                                                 Container(
//                                                   // warungmakanbyumHf (322:2503)
//                                                   margin: EdgeInsets.fromLTRB(
//                                                       0 * fem,
//                                                       0 * fem,
//                                                       53.5 * fem,
//                                                       0 * fem),
//                                                   child: Text(
//                                                     'Warung Makan Byu',
//                                                     textAlign: TextAlign.center,
//                                                     style: TextStyle(
//                                                       fontSize: 10 * ffem,
//                                                       fontWeight:
//                                                           FontWeight.w600,
//                                                       height: 1.6 * ffem / fem,
//                                                       letterSpacing:
//                                                           -0.4079999924 * fem,
//                                                       color: Color(0xff000000),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   // frame154nZ (322:2504)
//                                                   margin: EdgeInsets.fromLTRB(
//                                                       0 * fem,
//                                                       2.5 * fem,
//                                                       0 * fem,
//                                                       1.5 * fem),
//                                                   padding: EdgeInsets.fromLTRB(
//                                                       4 * fem,
//                                                       0 * fem,
//                                                       4 * fem,
//                                                       0 * fem),
//                                                   height: double.infinity,
//                                                   decoration: BoxDecoration(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             20 * fem),
//                                                   ),
//                                                   child: Row(
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       Container(
//                                                         // iconfeatherstaraF7 (322:2505)
//                                                         margin:
//                                                             EdgeInsets.fromLTRB(
//                                                                 0 * fem,
//                                                                 0 * fem,
//                                                                 4 * fem,
//                                                                 1 * fem),
//                                                         width: 8 * fem,
//                                                         height: 8 * fem,
// //   child:
// // Image.network(
// //   [Image url]
// //   width:  8*fem,
// //   height:  8*fem,
// // ),
//                                                       ),
//                                                       Text(
//                                                         // h4q (322:2506)
//                                                         '4.2',
//                                                         style: TextStyle(
//                                                           fontSize: 8 * ffem,
//                                                           fontWeight:
//                                                               FontWeight.w400,
//                                                           height: 1.3999999762 *
//                                                               ffem /
//                                                               fem,
//                                                           letterSpacing:
//                                                               -0.16 * fem,
//                                                           color:
//                                                               Color(0xff0a1406),
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                           Text(
//                                             // bgregoriogrovejaskolskiville2c (322:2507)
//                                             '67B Gregorio Grove ,Jaskolskiville',
//                                             style: TextStyle(
//                                               fontSize: 8 * ffem,
//                                               fontWeight: FontWeight.w300,
//                                               height: 1.3999999762 * ffem / fem,
//                                               letterSpacing: -0.16 * fem,
//                                               color: Color(0xff999999),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Text(
//                                       // kmawayZcq (322:2508)
//                                       '1.2 Km Away',
//                                       style: TextStyle(
//                                         fontSize: 8 * ffem,
//                                         fontWeight: FontWeight.w600,
//                                         height: 1.3999999762 * ffem / fem,
//                                         letterSpacing: -0.16 * fem,
//                                         color: Color(0xff000000),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // component34JqK (322:2509)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0 * fem, 0 * fem, 105 * fem, 0 * fem),
//                                 child: TextButton(
//                                   onPressed: () {},
//                                   style: TextButton.styleFrom(
//                                     padding: EdgeInsets.zero,
//                                   ),
//                                   child: Container(
//                                     width: double.infinity,
//                                     decoration: BoxDecoration(
//                                       borderRadius:
//                                           BorderRadius.circular(8 * fem),
//                                     ),
//                                     child: Row(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           // letspreviewdMo (I322:2509;298:2929)
//                                           margin: EdgeInsets.fromLTRB(0 * fem,
//                                               0 * fem, 4 * fem, 0 * fem),
//                                           child: Text(
//                                             'Let’s preview',
//                                             style: TextStyle(
//                                               fontSize: 8 * ffem,
//                                               fontWeight: FontWeight.w600,
//                                               height: 1.3999999762 * ffem / fem,
//                                               letterSpacing: -0.16 * fem,
//                                               color: Color(0xff000000),
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           // vuesaxlineararrowrightXxy (I322:2509;298:2930)
//                                           width: 12 * fem,
//                                           height: 12 * fem,
// //   child:
// // Image.network(
// //   [Image url]
// //   width:  12*fem,
// //   height:  12*fem,
// // ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     // frame6008rVT (322:2510)
//                     padding: EdgeInsets.fromLTRB(
//                         24 * fem, 20 * fem, 24 * fem, 20 * fem),
//                     width: double.infinity,
//                     height: 120 * fem,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Color(0xffb3b3b3)),
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           // rectangle3554aAZ (322:2511)
//                           margin: EdgeInsets.fromLTRB(
//                               0 * fem, 0 * fem, 16 * fem, 0 * fem),
//                           width: 140 * fem,
//                           height: 80 * fem,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8 * fem),
//                             color: Color(0xffd9d9d9),
//                             // image:  DecorationImage (
//                             //   fit:  BoxFit.cover,
//                             //   image:  NetworkImage (
//                             //     [Image url]
//                             //   ),
//                             // ),
//                           ),
//                         ),
//                         Container(
//                           // frame6005Ham (322:2512)
//                           width: 171 * fem,
//                           height: double.infinity,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 // frame6003qsB (322:2513)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0 * fem, 0 * fem, 0 * fem, 21 * fem),
//                                 width: double.infinity,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       // frame6002yTb (322:2514)
//                                       margin: EdgeInsets.fromLTRB(
//                                           0 * fem, 0 * fem, 0 * fem, 7 * fem),
//                                       width: double.infinity,
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Container(
//                                             // frame6001Jkm (322:2515)
//                                             width: double.infinity,
//                                             height: 16 * fem,
//                                             child: Row(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               children: [
//                                                 Container(
//                                                   // warungmakanapas3TT (322:2516)
//                                                   margin: EdgeInsets.fromLTRB(
//                                                       0 * fem,
//                                                       0 * fem,
//                                                       48 * fem,
//                                                       0 * fem),
//                                                   child: Text(
//                                                     'Warung Makan Apas',
//                                                     textAlign: TextAlign.center,
//                                                     style: TextStyle(
//                                                       fontSize: 10 * ffem,
//                                                       fontWeight:
//                                                           FontWeight.w600,
//                                                       height: 1.6 * ffem / fem,
//                                                       letterSpacing:
//                                                           -0.4079999924 * fem,
//                                                       color: Color(0xff000000),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   // frame15MDF (322:2517)
//                                                   margin: EdgeInsets.fromLTRB(
//                                                       0 * fem,
//                                                       2.5 * fem,
//                                                       0 * fem,
//                                                       1.5 * fem),
//                                                   padding: EdgeInsets.fromLTRB(
//                                                       4 * fem,
//                                                       0 * fem,
//                                                       4 * fem,
//                                                       0 * fem),
//                                                   height: double.infinity,
//                                                   decoration: BoxDecoration(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             20 * fem),
//                                                   ),
//                                                   child: Row(
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       Container(
//                                                         // iconfeatherstarTXB (322:2518)
//                                                         margin:
//                                                             EdgeInsets.fromLTRB(
//                                                                 0 * fem,
//                                                                 0 * fem,
//                                                                 4 * fem,
//                                                                 1 * fem),
//                                                         width: 8 * fem,
//                                                         height: 8 * fem,
// //   child:
// // Image.network(
// //   [Image url]
// //   width:  8*fem,
// //   height:  8*fem,
// // ),
//                                                       ),
//                                                       Text(
//                                                         // aLu (322:2519)
//                                                         '4.2',
//                                                         style: TextStyle(
//                                                           fontSize: 8 * ffem,
//                                                           fontWeight:
//                                                               FontWeight.w400,
//                                                           height: 1.3999999762 *
//                                                               ffem /
//                                                               fem,
//                                                           letterSpacing:
//                                                               -0.16 * fem,
//                                                           color:
//                                                               Color(0xff0a1406),
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                           Text(
//                                             // wgraystuticapennsylvania57867v (322:2520)
//                                             '3517 W. Gray St. Utica, Pennsylvania 57867',
//                                             style: TextStyle(
//                                               fontSize: 8 * ffem,
//                                               fontWeight: FontWeight.w300,
//                                               height: 1.3999999762 * ffem / fem,
//                                               letterSpacing: -0.16 * fem,
//                                               color: Color(0xff999999),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Text(
//                                       // kmaway1h7 (322:2521)
//                                       '1.2 Km Away',
//                                       style: TextStyle(
//                                         fontSize: 8 * ffem,
//                                         fontWeight: FontWeight.w600,
//                                         height: 1.3999999762 * ffem / fem,
//                                         letterSpacing: -0.16 * fem,
//                                         color: Color(0xff000000),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // component348mj (322:2522)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0 * fem, 0 * fem, 105 * fem, 0 * fem),
//                                 child: TextButton(
//                                   onPressed: () {},
//                                   style: TextButton.styleFrom(
//                                     padding: EdgeInsets.zero,
//                                   ),
//                                   child: Container(
//                                     width: double.infinity,
//                                     decoration: BoxDecoration(
//                                       borderRadius:
//                                           BorderRadius.circular(8 * fem),
//                                     ),
//                                     child: Row(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           // letspreview26R (I322:2522;298:2929)
//                                           margin: EdgeInsets.fromLTRB(0 * fem,
//                                               0 * fem, 4 * fem, 0 * fem),
//                                           child: Text(
//                                             'Let’s preview',
//                                             style: TextStyle(
//                                               fontSize: 8 * ffem,
//                                               fontWeight: FontWeight.w600,
//                                               height: 1.3999999762 * ffem / fem,
//                                               letterSpacing: -0.16 * fem,
//                                               color: Color(0xff000000),
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           // vuesaxlineararrowrightKrD (I322:2522;298:2930)
//                                           width: 12 * fem,
//                                           height: 12 * fem,
// //   child:
// // Image.network(
// //   [Image url]
// //   width:  12*fem,
// //   height:  12*fem,
// // ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     // frame6009edb (322:2523)
//                     padding: EdgeInsets.fromLTRB(
//                         24 * fem, 20 * fem, 24 * fem, 20 * fem),
//                     width: double.infinity,
//                     height: 120 * fem,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Color(0xffb3b3b3)),
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           // rectangle3554yA5 (322:2524)
//                           margin: EdgeInsets.fromLTRB(
//                               0 * fem, 0 * fem, 16 * fem, 0 * fem),
//                           width: 140 * fem,
//                           height: 80 * fem,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8 * fem),
//                             color: Color(0xffd9d9d9),
//                             // image:  DecorationImage (
//                             //   fit:  BoxFit.cover,
//                             //   image:  NetworkImage (
//                             //     [Image url]
//                             //   ),
//                             // ),
//                           ),
//                         ),
//                         Container(
//                           // frame6005UsX (322:2525)
//                           width: 171 * fem,
//                           height: double.infinity,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 // frame6003qCH (322:2526)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0 * fem, 0 * fem, 0 * fem, 21 * fem),
//                                 width: double.infinity,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       // frame6002mrd (322:2527)
//                                       margin: EdgeInsets.fromLTRB(
//                                           0 * fem, 0 * fem, 0 * fem, 7 * fem),
//                                       width: double.infinity,
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Container(
//                                             // frame6001uxq (322:2528)
//                                             width: double.infinity,
//                                             height: 16 * fem,
//                                             child: Row(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               children: [
//                                                 Container(
//                                                   // warungmakanfres4qj (322:2529)
//                                                   margin: EdgeInsets.fromLTRB(
//                                                       0 * fem,
//                                                       0 * fem,
//                                                       52 * fem,
//                                                       0 * fem),
//                                                   child: Text(
//                                                     'Warung Makan Fres',
//                                                     textAlign: TextAlign.center,
//                                                     style: TextStyle(
//                                                       fontSize: 10 * ffem,
//                                                       fontWeight:
//                                                           FontWeight.w600,
//                                                       height: 1.6 * ffem / fem,
//                                                       letterSpacing:
//                                                           -0.4079999924 * fem,
//                                                       color: Color(0xff000000),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   // frame15aJH (322:2530)
//                                                   margin: EdgeInsets.fromLTRB(
//                                                       0 * fem,
//                                                       2.5 * fem,
//                                                       0 * fem,
//                                                       1.5 * fem),
//                                                   padding: EdgeInsets.fromLTRB(
//                                                       4 * fem,
//                                                       0 * fem,
//                                                       4 * fem,
//                                                       0 * fem),
//                                                   height: double.infinity,
//                                                   decoration: BoxDecoration(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             20 * fem),
//                                                   ),
//                                                   child: Row(
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       Container(
//                                                         // iconfeatherstar6XX (322:2531)
//                                                         margin:
//                                                             EdgeInsets.fromLTRB(
//                                                                 0 * fem,
//                                                                 0 * fem,
//                                                                 4 * fem,
//                                                                 1 * fem),
//                                                         width: 8 * fem,
//                                                         height: 8 * fem,
// //   child:
// // Image.network(
// //   [Image url]
// //   width:  8*fem,
// //   height:  8*fem,
// // ),
//                                                       ),
//                                                       Text(
//                                                         // RJu (322:2532)
//                                                         '4.2',
//                                                         style: TextStyle(
//                                                           fontSize: 8 * ffem,
//                                                           fontWeight:
//                                                               FontWeight.w400,
//                                                           height: 1.3999999762 *
//                                                               ffem /
//                                                               fem,
//                                                           letterSpacing:
//                                                               -0.16 * fem,
//                                                           color:
//                                                               Color(0xff0a1406),
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                           Text(
//                                             // bgregoriogrovejaskolskivilleAX (322:2533)
//                                             '67B Gregorio Grove ,Jaskolskiville',
//                                             style: TextStyle(
//                                               fontSize: 8 * ffem,
//                                               fontWeight: FontWeight.w300,
//                                               height: 1.3999999762 * ffem / fem,
//                                               letterSpacing: -0.16 * fem,
//                                               color: Color(0xff999999),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Text(
//                                       // kmawaytyB (322:2534)
//                                       '1.2 Km Away',
//                                       style: TextStyle(
//                                         fontSize: 8 * ffem,
//                                         fontWeight: FontWeight.w600,
//                                         height: 1.3999999762 * ffem / fem,
//                                         letterSpacing: -0.16 * fem,
//                                         color: Color(0xff000000),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // component34qtR (322:2535)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0 * fem, 0 * fem, 105 * fem, 0 * fem),
//                                 child: TextButton(
//                                   onPressed: () {},
//                                   style: TextButton.styleFrom(
//                                     padding: EdgeInsets.zero,
//                                   ),
//                                   child: Container(
//                                     width: double.infinity,
//                                     decoration: BoxDecoration(
//                                       borderRadius:
//                                           BorderRadius.circular(8 * fem),
//                                     ),
//                                     child: Row(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           // letspreviewxy3 (I322:2535;298:2929)
//                                           margin: EdgeInsets.fromLTRB(0 * fem,
//                                               0 * fem, 4 * fem, 0 * fem),
//                                           child: Text(
//                                             'Let’s preview',
//                                             style: TextStyle(
//                                               fontSize: 8 * ffem,
//                                               fontWeight: FontWeight.w600,
//                                               height: 1.3999999762 * ffem / fem,
//                                               letterSpacing: -0.16 * fem,
//                                               color: Color(0xff000000),
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           // vuesaxlineararrowrightURb (I322:2535;298:2930)
//                                           width: 12 * fem,
//                                           height: 12 * fem,
// //   child:
// // Image.network(
// //   [Image url]
// //   width:  12*fem,
// //   height:  12*fem,
// // ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     // frame6010CsP (322:2536)
//                     margin: EdgeInsets.fromLTRB(
//                         0 * fem, 0 * fem, 0 * fem, 20 * fem),
//                     padding: EdgeInsets.fromLTRB(
//                         24 * fem, 20 * fem, 24 * fem, 20 * fem),
//                     width: double.infinity,
//                     height: 120 * fem,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Color(0xffb3b3b3)),
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           // rectangle3554WNH (322:2537)
//                           margin: EdgeInsets.fromLTRB(
//                               0 * fem, 0 * fem, 16 * fem, 0 * fem),
//                           width: 140 * fem,
//                           height: 80 * fem,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8 * fem),
//                             color: Color(0xffd9d9d9),
//                             // image:  DecorationImage (
//                             //   fit:  BoxFit.cover,
//                             //   image:  NetworkImage (
//                             //     [Image url]
//                             //   ),
//                             // ),
//                           ),
//                         ),
//                         Container(
//                           // frame60051pq (322:2538)
//                           width: 171 * fem,
//                           height: double.infinity,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 // frame6003Mth (322:2539)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0 * fem, 0 * fem, 0 * fem, 21 * fem),
//                                 width: double.infinity,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       // frame6002ufK (322:2540)
//                                       margin: EdgeInsets.fromLTRB(
//                                           0 * fem, 0 * fem, 0 * fem, 7 * fem),
//                                       width: double.infinity,
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Container(
//                                             // frame60012zq (322:2541)
//                                             width: double.infinity,
//                                             height: 16 * fem,
//                                             child: Row(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               children: [
//                                                 Container(
//                                                   // warungmakankonuPKb (322:2542)
//                                                   margin: EdgeInsets.fromLTRB(
//                                                       0 * fem,
//                                                       0 * fem,
//                                                       48 * fem,
//                                                       0 * fem),
//                                                   child: Text(
//                                                     'Warung Makan Konu',
//                                                     textAlign: TextAlign.center,
//                                                     style: TextStyle(
//                                                       fontSize: 10 * ffem,
//                                                       fontWeight:
//                                                           FontWeight.w600,
//                                                       height: 1.6 * ffem / fem,
//                                                       letterSpacing:
//                                                           -0.4079999924 * fem,
//                                                       color: Color(0xff000000),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   // frame15JSZ (322:2543)
//                                                   margin: EdgeInsets.fromLTRB(
//                                                       0 * fem,
//                                                       2.5 * fem,
//                                                       0 * fem,
//                                                       1.5 * fem),
//                                                   padding: EdgeInsets.fromLTRB(
//                                                       4 * fem,
//                                                       0 * fem,
//                                                       4 * fem,
//                                                       0 * fem),
//                                                   height: double.infinity,
//                                                   decoration: BoxDecoration(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             20 * fem),
//                                                   ),
//                                                   child: Row(
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       Container(
//                                                         // iconfeatherstarD3j (322:2544)
//                                                         margin:
//                                                             EdgeInsets.fromLTRB(
//                                                                 0 * fem,
//                                                                 0 * fem,
//                                                                 4 * fem,
//                                                                 1 * fem),
//                                                         width: 8 * fem,
//                                                         height: 8 * fem,
// //   child:
// // Image.network(
// //   [Image url]
// //   width:  8*fem,
// //   height:  8*fem,
// // ),
//                                                       ),
//                                                       Text(
//                                                         // vyj (322:2545)
//                                                         '4.2',
//                                                         style: TextStyle(
//                                                           fontSize: 8 * ffem,
//                                                           fontWeight:
//                                                               FontWeight.w400,
//                                                           height: 1.3999999762 *
//                                                               ffem /
//                                                               fem,
//                                                           letterSpacing:
//                                                               -0.16 * fem,
//                                                           color:
//                                                               Color(0xff0a1406),
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                           Text(
//                                             // bisruejeanmac75011parissty (322:2546)
//                                             '6bis rue Jean Macé 75011 Paris',
//                                             style: TextStyle(
//                                               fontSize: 8 * ffem,
//                                               fontWeight: FontWeight.w300,
//                                               height: 1.3999999762 * ffem / fem,
//                                               letterSpacing: -0.16 * fem,
//                                               color: Color(0xff999999),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Text(
//                                       // kmawayPsK (322:2547)
//                                       '1.2 Km Away',
//                                       style: TextStyle(
//                                         fontSize: 8 * ffem,
//                                         fontWeight: FontWeight.w600,
//                                         height: 1.3999999762 * ffem / fem,
//                                         letterSpacing: -0.16 * fem,
//                                         color: Color(0xff000000),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // component34wP3 (322:2548)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0 * fem, 0 * fem, 105 * fem, 0 * fem),
//                                 child: TextButton(
//                                   onPressed: () {},
//                                   style: TextButton.styleFrom(
//                                     padding: EdgeInsets.zero,
//                                   ),
//                                   child: Container(
//                                     width: double.infinity,
//                                     decoration: BoxDecoration(
//                                       borderRadius:
//                                           BorderRadius.circular(8 * fem),
//                                     ),
//                                     child: Row(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           // letspreviewF8q (I322:2548;298:2929)
//                                           margin: EdgeInsets.fromLTRB(0 * fem,
//                                               0 * fem, 4 * fem, 0 * fem),
//                                           child: Text(
//                                             'Let’s preview',
//                                             style: TextStyle(
//                                               fontSize: 8 * ffem,
//                                               fontWeight: FontWeight.w600,
//                                               height: 1.3999999762 * ffem / fem,
//                                               letterSpacing: -0.16 * fem,
//                                               color: Color(0xff000000),
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           // vuesaxlineararrowright9k1 (I322:2548;298:2930)
//                                           width: 12 * fem,
//                                           height: 12 * fem,
// //   child:
// // Image.network(
// //   [Image url]
// //   width:  12*fem,
// //   height:  12*fem,
// // ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     // frame6011gjw (322:2549)
//                     margin: EdgeInsets.fromLTRB(
//                         24 * fem, 0 * fem, 24 * fem, 0 * fem),
//                     width: double.infinity,
//                     height: 80 * fem,
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           // rectangle3554cNh (322:2550)
//                           margin: EdgeInsets.fromLTRB(
//                               0 * fem, 0 * fem, 16 * fem, 0 * fem),
//                           width: 140 * fem,
//                           height: 80 * fem,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8 * fem),
//                             color: Color(0xffd9d9d9),
//                             // image:  DecorationImage (
//                             //   fit:  BoxFit.cover,
//                             //   image:  NetworkImage (
//                             //     [Image url]
//                             //   ),
//                             // ),
//                           ),
//                         ),
//                         Container(
//                           // frame60057qF (322:2551)
//                           width: 171 * fem,
//                           height: double.infinity,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 // frame6003s3j (322:2552)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0 * fem, 0 * fem, 0 * fem, 21 * fem),
//                                 width: double.infinity,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       // frame600219w (322:2553)
//                                       margin: EdgeInsets.fromLTRB(
//                                           0 * fem, 0 * fem, 0 * fem, 7 * fem),
//                                       width: double.infinity,
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Container(
//                                             // frame6001Lxu (322:2554)
//                                             width: double.infinity,
//                                             height: 16 * fem,
//                                             child: Row(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               children: [
//                                                 Container(
//                                                   // warungmakancakbagong6SH (322:2555)
//                                                   margin: EdgeInsets.fromLTRB(
//                                                       0 * fem,
//                                                       0 * fem,
//                                                       16 * fem,
//                                                       0 * fem),
//                                                   child: Text(
//                                                     'Warung Makan Cak Bagong',
//                                                     textAlign: TextAlign.center,
//                                                     style: TextStyle(
//                                                       fontSize: 10 * ffem,
//                                                       fontWeight:
//                                                           FontWeight.w600,
//                                                       height: 1.6 * ffem / fem,
//                                                       letterSpacing:
//                                                           -0.4079999924 * fem,
//                                                       color: Color(0xff000000),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   // frame15QSy (322:2556)
//                                                   margin: EdgeInsets.fromLTRB(
//                                                       0 * fem,
//                                                       2.5 * fem,
//                                                       0 * fem,
//                                                       1.5 * fem),
//                                                   padding: EdgeInsets.fromLTRB(
//                                                       4 * fem,
//                                                       0 * fem,
//                                                       4 * fem,
//                                                       0 * fem),
//                                                   height: double.infinity,
//                                                   decoration: BoxDecoration(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             20 * fem),
//                                                   ),
//                                                   child: Row(
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       Container(
//                                                         // iconfeatherstarued (322:2557)
//                                                         margin:
//                                                             EdgeInsets.fromLTRB(
//                                                                 0 * fem,
//                                                                 0 * fem,
//                                                                 4 * fem,
//                                                                 1 * fem),
//                                                         width: 8 * fem,
//                                                         height: 8 * fem,
// //   child:
// // Image.network(
// //   [Image url]
// //   width:  8*fem,
// //   height:  8*fem,
// // ),
//                                                       ),
//                                                       Text(
//                                                         // 2jF (322:2558)
//                                                         '4.2',
//                                                         style: TextStyle(
//                                                           fontSize: 8 * ffem,
//                                                           fontWeight:
//                                                               FontWeight.w400,
//                                                           height: 1.3999999762 *
//                                                               ffem /
//                                                               fem,
//                                                           letterSpacing:
//                                                               -0.16 * fem,
//                                                           color:
//                                                               Color(0xff0a1406),
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                           Text(
//                                             // boulevardvoltaire75011parisNo7 (322:2559)
//                                             '147 Boulevard Voltaire 75011 Paris',
//                                             style: TextStyle(
//                                               fontSize: 8 * ffem,
//                                               fontWeight: FontWeight.w300,
//                                               height: 1.3999999762 * ffem / fem,
//                                               letterSpacing: -0.16 * fem,
//                                               color: Color(0xff999999),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Text(
//                                       // kmawayJgm (322:2560)
//                                       '1.2 Km Away',
//                                       style: TextStyle(
//                                         fontSize: 8 * ffem,
//                                         fontWeight: FontWeight.w600,
//                                         height: 1.3999999762 * ffem / fem,
//                                         letterSpacing: -0.16 * fem,
//                                         color: Color(0xff000000),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // component34Fc1 (322:2561)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0 * fem, 0 * fem, 105 * fem, 0 * fem),
//                                 child: TextButton(
//                                   onPressed: () {},
//                                   style: TextButton.styleFrom(
//                                     padding: EdgeInsets.zero,
//                                   ),
//                                   child: Container(
//                                     width: double.infinity,
//                                     decoration: BoxDecoration(
//                                       borderRadius:
//                                           BorderRadius.circular(8 * fem),
//                                     ),
//                                     child: Row(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           // letspreview9hP (I322:2561;298:2929)
//                                           margin: EdgeInsets.fromLTRB(0 * fem,
//                                               0 * fem, 4 * fem, 0 * fem),
//                                           child: Text(
//                                             'Let’s preview',
//                                             style: TextStyle(
//                                               fontSize: 8 * ffem,
//                                               fontWeight: FontWeight.w600,
//                                               height: 1.3999999762 * ffem / fem,
//                                               letterSpacing: -0.16 * fem,
//                                               color: Color(0xff000000),
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           // vuesaxlineararrowrightrrh (I322:2561;298:2930)
//                                           width: 12 * fem,
//                                           height: 12 * fem,
// //   child:
// // Image.network(
// //   [Image url]
// //   width:  12*fem,
// //   height:  12*fem,
// // ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
            child: Column(
              children: [
                FutureBuilder(
                    // future: getData(),
                    builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: const CircularProgressIndicator());
                  }
                  if (snapshot.hasError) {
                    return Text('Eror');
                  } else {
                    return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            itemCount: 3,
                            itemBuilder: (ctx, index) {
                              return Container(
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ListTile(
                                            leading: CircleAvatar(),
                                            title: Text('Nama Warung'),
                                            subtitle: Column(
                                              children: [
                                                Container(
                                                  child: Text('Alamat'),
                                                ),
                                                Container(
                                                  child: Text('Jarak'),
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      child:
                                                          Text("Let's Preview"),
                                                    ),
                                                    Container(
                                                      child: Icon(
                                                          Icons.arrow_right),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                            trailing: Row(
                                              children: [
                                                Container(
                                                  child: Icon(Icons.star),
                                                ),
                                                Container(
                                                  child: Text('5'),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }));
                  }
                })
              ],
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
              index: index,
              items: items,
              onTap: (index) => setState(() => _onTap(index)),
            ),
          )),
    );
  }
}
