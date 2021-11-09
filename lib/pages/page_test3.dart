import 'package:flutter/material.dart';

class PageTest3 extends StatefulWidget {
  const PageTest3({Key? key}) : super(key: key);

  @override
  _PageTest3State createState() => _PageTest3State();
}

class _PageTest3State extends State<PageTest3> {

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white12,
      child: const Text("Add"),
    );
  }
}
