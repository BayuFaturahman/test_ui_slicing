import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ordo/widget/bottom_navigation.dart';

class PageTest2 extends StatefulWidget {
  const PageTest2({Key? key}) : super(key: key);

  @override
  _PageTest2State createState() => _PageTest2State();
}

class _PageTest2State extends State<PageTest2> {
  String gucci = 'assets/images/gucci.png';
  String eigerLogo = 'assets/images/eiger.png';
  String avatar1 = 'assets/images/avatar1.png';
  String avatar2 = 'assets/images/avatar2.png';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFFFEF9F9),
          child: ListView(
            children: [
              Stack(
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: const Center(
                                        child: Icon(
                                          Icons.arrow_back,
                                          color: Colors.white,
                                          size: 15,
                                        )),
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10)),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    "PRODUK DETAIL",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.shopping_bag,
                                    color: Colors.blue,
                                  ),
                                  Icon(
                                    Icons.notifications,
                                    color: Colors.redAccent,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          gucci,
                          width: 200,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 5,
                              width: 17,
                              decoration: BoxDecoration(
                                  color: Colors.lightBlue,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 5,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 5,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 300),
                      child: Container(
                        height: Get.height,
                        decoration: const BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(60))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(60)),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Tas Guci",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF47623F)),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            child: const Center(
                                                child: Text(
                                                  "Barang Bekas",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold),
                                                )),
                                            decoration: BoxDecoration(
                                                color: const Color(0xFFDFAE1D),
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            width: 90,
                                            height: 20,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            child: const Center(
                                                child: Text(
                                                  "Stok 100",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold),
                                                )),
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            width: 60,
                                            height: 20,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Rp 126.0000",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 12,
                                              decorationColor: Colors.blue,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          Text(
                                            "Rp 100.500",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        child: Container(
                                          child: const Center(
                                              child: Text(
                                                "Diskon 10%",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold),
                                              )),
                                          decoration: BoxDecoration(
                                              color: Colors.blueAccent,
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          width: 70,
                                          height: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Divider(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Row(
                                    children: const [
                                      Text(
                                        "Vendor",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF47623F)),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        eigerLogo,
                                        width: 100,
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.star,
                                            color: Colors.blue,
                                            size: 17,
                                          ),
                                          Text("5.0 | 200 Terjual",
                                              style: TextStyle(
                                                  color: Colors.blue, fontSize: 14))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Row(
                                    children: const [
                                      Text(
                                        "Deskripsi",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF47623F)),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Column(
                                    children: const [
                                      Text(
                                        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
                                        style: TextStyle(
                                            fontSize: 12, color: Color(0xFF47623F)),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Row(
                                    children: const [
                                      Text(
                                        "Ulasan dan Penilaian",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF47623F)),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Card(
                                      child: Container(
                                        height: 100,
                                        decoration: const BoxDecoration(
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image.asset(avatar1,width: 35,),
                                                      const SizedBox(width: 5,),
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: const[
                                                          Text("Maude Hall",style: TextStyle(color: Color(0xFF47623F),fontSize: 12,fontWeight: FontWeight.w600),),
                                                          Text("14 min",style: TextStyle(color: Color(0xFF47623F),fontSize: 12),)

                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: const [
                                                      Icon(Icons.star_sharp,color: Colors.red,size: 15,),
                                                      Text("5.0",style: TextStyle(color: Color(0xFF47623F),fontSize: 12,fontWeight: FontWeight.w600),),

                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 10),
                                              child: Column(
                                                children: const [
                                                  Text(
                                                    "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.",
                                                    style: TextStyle(
                                                        fontSize: 12, color: Color(0xFF47623F)),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Card(
                                      child: Container(
                                        height: 100,
                                        decoration: const BoxDecoration(
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image.asset(avatar2,width: 35,),
                                                      const SizedBox(width: 5,),
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: const[
                                                          Text("Ester Howard",style: TextStyle(color: Color(0xFF47623F),fontSize: 12,fontWeight: FontWeight.w600),),
                                                          Text("14 min",style: TextStyle(color: Color(0xFF47623F),fontSize: 12),)

                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: const [
                                                      Icon(Icons.star_sharp,color: Colors.red,size: 15,),
                                                      Text("5.0",style: TextStyle(color: Color(0xFF47623F),fontSize: 12,fontWeight: FontWeight.w600),),

                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 10),
                                              child: Column(
                                                children: const [
                                                  Text(
                                                    "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.",
                                                    style: TextStyle(
                                                        fontSize: 12, color: Color(0xFF47623F)),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    )),

                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
            ]
          ),
        ),
      ),
      bottomNavigationBar:  BottomNavigation(),

    );
  }
}
