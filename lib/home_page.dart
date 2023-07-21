import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:waroengku/location.dart';
import 'package:waroengku/profile.dart';
import 'package:waroengku/tambah_warung.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final screens = [const HomePage(), const TambahWarung(), const Profile()];
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
    return Scaffold(
        appBar: PreferredSize(
            child: Container(
              padding: const EdgeInsets.fromLTRB(24, 32, 24, 3),
              height: 144,
              // EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              color: const Color(0xff2613ff),
              child: Column(
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Hallo Dianne Russel!',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Jl.Raya Solo No.12',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    height: 40,
                    child: TextField(
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: const Icon(Icons.search),
                          prefixIconColor: Colors.grey,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Search',
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.grey)),
                    ),
                  )
                ],
              ),
            ),
            preferredSize: Size.fromHeight(80))
        //   toolbarHeight: 100,
        //   backgroundColor: const Color(0xff2613ff),
        //   leading: Container(
        //     // padding: EdgeInsets.fromLTRB(24, 22, 24, 22),
        //     padding: EdgeInsets.symmetric(horizontal: 24),
        //     child: Row(
        //       children: [
        //         Container(
        //           child: CircleAvatar(
        //             child: Icon(Icons.person),
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
        ,
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
        ));
  }
}
