import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ordo/pages/controller_navbar.dart';
import 'package:test_ordo/pages/page_test1.dart';
import 'package:test_ordo/pages/page_test2.dart';
import 'package:test_ordo/pages/page_test3.dart';
import 'package:test_ordo/widget/button_primary.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ControllerNavbar());
    return GetMaterialApp(
      theme: ThemeData(

      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  ControllerNavbar cNavbar = Get.find<ControllerNavbar>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
             const Text(
              'Made By',
            ),
            const SizedBox(height: 20,),
            const Text(
              '[Bayu Faturahman]',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            ),
            const SizedBox(height:100,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ButtonPrimary(onPressed:(){
                print("text1");
                cNavbar.isHome(true);

                Get.to(const PageTest1());

              }, label: 'test1'),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ButtonPrimary(onPressed:(){
                print("text2");
                cNavbar.isHome(false);
                Get.to(const PageTest2());

              }, label: 'test2'),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ButtonPrimary(onPressed:(){
                print("text3");
                cNavbar.isHome(false);
                Get.to(const PageTest3());

              }, label: 'test3'),
            ),
          ],
        ),
      ),
    );
  }
}
