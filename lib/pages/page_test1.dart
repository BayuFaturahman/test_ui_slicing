import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ordo/widget/bottom_navigation.dart';

class PageTest1 extends StatefulWidget {
  const PageTest1({Key? key}) : super(key: key);

  @override
  _PageTest1State createState() => _PageTest1State();
}

class _PageTest1State extends State<PageTest1> {
  final TextEditingController _searchController = TextEditingController();

  String iconsOption = 'assets/icons/options.png';
  String iconsBag = 'assets/icons/bag.png';
  String iconsBell = 'assets/icons/bell.png';
  String imagesBanner = 'assets/images/banner.png';
  String label = 'assets/images/label.png';

  final List<Map> myProducts =
      List.generate(5, (index) => {"id": index, "name": "Product $index"})
          .toList();

  final List _dataProduct = [
    {
      "id": 0,
      "nama": "Music Box Child",
      "imageUrl": "assets/images/musicbox.png"
    },
    {
      "id": 1,
      "nama": "Music Box Large ",
      "imageUrl": "assets/images/musicbox_large.png"
    },
    {"id": 2, "nama": "Handphone", "imageUrl": "assets/images/hp.png"},
    {"id": 3, "nama": "Handphone 2", "imageUrl": "assets/images/hp2.png"},
    {"id": 4, "nama": "Ransel ", "imageUrl": "assets/images/ransel.png"},
    {
      "id": 5,
      "nama": "Ransel Wanita ",
      "imageUrl": "assets/images/ransel_cw.png"
    },
    {"id": 6, "nama": "Tas Lecy ", "imageUrl": "assets/images/tas_ibu.png"},
    {"id": 7, "nama": "Tas Gucci", "imageUrl": "assets/images/tas2.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFFFEF9F9),
          height: Get.height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: Get.width / 1.5,
                      height: 35,
                      decoration: BoxDecoration(
                          color: const Color(0xFFe9eaec),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        cursorColor: const Color(0xFF000000),
                        controller: _searchController,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xFF3AB648),
                            ),
                            hintStyle: TextStyle(fontSize: 15),
                            hintText: "Cari dengan mengetik barang",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: Get.width / 12,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(iconsOption),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: Get.width / 12,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(iconsBag),
                      ),
                      decoration: BoxDecoration(
                          color: const Color(0xFFDFAE1D),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: Get.width / 12,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(iconsBell),
                      ),
                      decoration: BoxDecoration(
                          color: const Color(0xFFFF485A),
                          borderRadius: BorderRadius.circular(10)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 180,
                  width: Get.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imagesBanner),
                        fit: BoxFit.fill,
                      ),
                      borderRadius:
                      BorderRadius.circular(15)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                  shrinkWrap : true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate:
                      const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 300,
                          childAspectRatio: 3 / 4.1,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                  itemCount: _dataProduct.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Card(
                      shadowColor: Colors.black26,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            Stack(children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 130,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            _dataProduct[index]
                                                ['imageUrl']),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(15)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, top: 10),
                                child: Image.asset(
                                  label,
                                  width: 100,
                                ),
                              )
                            ]),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Rp.6.000",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 12,
                                          decorationColor: Colors.blue,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                      Text(
                                        "Rp.4.500",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 10),
                                    child: Container(
                                      child: const Center(
                                          child:  Text(
                                        "Diskon 10%",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )),
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      width: 70,
                                      height: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: const [
                                  Text(
                                    "Lorem ipsum",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    );
                  }),
              const SizedBox(height: 50)

            ],
          ),
        ),
      ),
      bottomNavigationBar:  BottomNavigation(),
    );
  }
}
