import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ordo/pages/controller_navbar.dart';

class BottomNavigation extends StatelessWidget {

   BottomNavigation({Key? key}) : super(key: key);
  final ControllerNavbar cNavbar = Get.find<ControllerNavbar>();


  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
      items:  [
        BottomNavigationBarItem(
          icon:Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset('assets/icons/assignment.png',width: 25,),
          ),
          label: ''
        ),
        BottomNavigationBarItem(
          icon:Image.asset('assets/icons/swap_horiz.png',width: 25,),
            label: ''

        ),
        BottomNavigationBarItem(
          icon:Obx(()=>cNavbar.isHome.value==true?
               Image.asset('assets/icons/home.png',width: 23,)
              :const Icon(Icons.home,color: Colors.black12,)
          ),
            label: ''

        ),
        BottomNavigationBarItem(
          icon:Image.asset('assets/icons/dashbord.png',width: 20,),
            label: ''
        ),
        BottomNavigationBarItem(
          icon:Image.asset('assets/icons/person.png',width: 20,),
            label: ''

        ),
      ],
    );
  }
}
