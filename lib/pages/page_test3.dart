import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ordo/widget/bottom_navigation.dart';
import 'package:test_ordo/widget/button_next.dart';
import 'package:test_ordo/widget/button_primary.dart';

class PageTest3 extends StatefulWidget {
  const PageTest3({Key? key}) : super(key: key);

  @override
  _PageTest3State createState() => _PageTest3State();
}

class _PageTest3State extends State<PageTest3> {
  String gucci = 'assets/images/gucci.png';
  String eiger = 'assets/images/eiger2.png';
  String eigerLogo = 'assets/images/eiger.png';
  String avatar1 = 'assets/images/avatar1.png';
  String avatar2 = 'assets/images/avatar2.png';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFFFCF8F8),
          child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap:()=>Get.back(),
                        child: Container(
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
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Checkout",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 100,
                    child: Card(
                      color: Colors.white70,
                      elevation: 2.0,
                      shadowColor: Colors.black26,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
                        )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 70,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset(gucci),
                                  ),
                                  decoration: const  BoxDecoration(
                                    color: Colors.white,
                                      shape:BoxShape.circle
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Tas Gucci",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),

                              ),
                               SizedBox(height: 10,),
                              Text(
                                "Rp 75.000",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12,

                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: const Center(
                                    child: Text(
                                      "-  2  +",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent
                                    ,
                                    borderRadius:
                                    BorderRadius.circular(10)),
                                width: 50,
                                height: 23,
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                child:  Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children:const  [
                                        Icon(Icons.edit,color: Colors.white,size: 12,),
                                        Text(
                                          "Catatan",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )),
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent
                                    ,
                                    borderRadius:
                                    BorderRadius.circular(10)),
                                width: 70,
                                height: 25,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 100,
                    child: Card(
                      color: Colors.white70,
                      elevation: 2.0,
                      shadowColor: Colors.black26,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16.0),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const  Padding(
                            padding:  EdgeInsets.only(top: 10,left: 10),
                            child: Text("Catatan Item",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black54),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1,color: Colors.black12)
                              ),
                              child: const Padding(
                                padding:  EdgeInsets.all(8.0),
                                child:  TextField(
                                  maxLines: 8,
                                  decoration: InputDecoration.collapsed(
                                     hintStyle: TextStyle(fontSize: 12),
                                      hintText: "Ketik disini..."
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ),
                  ),
                ),
                Dismissible(
                  key: const Key("delete"),
                  background: Container(),
                  secondaryBackground: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          child:const Icon(Icons.delete_outline,color: Colors.white,),
                          decoration:const BoxDecoration(
                            color: Colors.blueAccent,
                            shape: BoxShape.circle
                          ),
                          width: 50,
                          height: 50,

                        ),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          height: 100,
                          child: Card(
                            color: Colors.white70,
                            elevation: 2.0,
                            shadowColor: Colors.black26,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16.0),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 70,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.asset(eiger),
                                        ),
                                        decoration: const  BoxDecoration(
                                            color: Colors.white,
                                            shape:BoxShape.circle
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Tas Eiger",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),

                                    ),
                                    SizedBox(height: 10,),
                                    Text(
                                      "Rp 75.000",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 12,

                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: const Center(
                                          child: Text(
                                            "-  2  +",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                      decoration: BoxDecoration(
                                          color: Colors.blueAccent
                                          ,
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                      width: 50,
                                      height: 23,
                                    ),
                                    const SizedBox(height: 10,),
                                    Container(
                                      child:  Center(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children:const  [
                                              Icon(Icons.delete_sweep,color: Colors.white,size: 12,),
                                              Text(
                                                "Hapus Catatan",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          )),
                                      decoration: BoxDecoration(
                                          color: Colors.blueAccent
                                          ,
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                      width: 110,
                                      height: 25,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          height: 100,
                          child: Card(
                              color: Colors.white70,
                              elevation: 2.0,
                              shadowColor: Colors.black26,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16.0),
                                  )),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const  Padding(
                                    padding:  EdgeInsets.only(top: 10,left: 10),
                                    child: Text("Catatan Item",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black54),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(width: 1,color: Colors.black12)
                                      ),
                                      child: const Padding(
                                        padding:  EdgeInsets.all(8.0),
                                        child:  TextField(
                                          maxLines: 8,
                                          decoration: InputDecoration.collapsed(
                                              hintStyle: TextStyle(fontSize: 12),
                                              hintText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",

                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 100,
                    child: Card(
                        color: Colors.white70,
                        elevation: 2.0,
                        shadowColor: Colors.black26,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const  Padding(
                              padding:  EdgeInsets.only(top: 10,left: 10),
                              child: Text("Catatan Pesanan",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black54),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 1,color: Colors.black12)
                                ),
                                child: const Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child:  TextField(
                                    maxLines: 8,
                                    decoration: InputDecoration.collapsed(
                                      hintStyle: TextStyle(fontSize: 12),
                                      hintText: "Ketik Disisni..."

                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
               const  Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20),
                  child:  Text("Detail Pembayaran"),
                ),
                const SizedBox(
                  height: 10,
                ),
                  Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 20),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Tas Gucci",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                          Text("(Qty. 1)",style: TextStyle(fontSize: 12),),

                        ],
                      ),
                     const  Text("Rp 75.000",style: TextStyle(fontSize: 12),),

                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 20),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Tas Eiger",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                          Text("(Qty. 1)",style: TextStyle(fontSize: 12),),

                        ],
                      ),
                      const  Text("Rp 75.000",style: TextStyle(fontSize: 12),),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 20),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const[
                      Text("Ongkos kirim",style: TextStyle(fontSize: 12),),
                      Text("Rp 10.000",style: TextStyle(fontSize: 12),),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.black26,
                    height: 2.0,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 20),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const[
                      Text("Sub Total",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                      Text("Rp 450.000",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ButtonNext(onPressed: (){},
                      label: 'Waktu Pengantaran',
                      labelStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                      color: const Color(0xFF3C7DD9)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ButtonNext(onPressed: (){},
                      label: 'Alamat Pengiriman',
                      labelStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                      color: const Color(0xFF3C7DD9)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    decoration: const BoxDecoration(),
                    child:  Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(15),),
                        child: Center(
                          child: SizedBox(
                            height: 60,
                            width: 300,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                            Text("Tolong pastikan semua pesanan anda sudah benar dan tidak kurang.",textAlign: TextAlign.center,),
                        ],
                      ),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ButtonPrimary(onPressed: (){}, label: 'Bayar Sekarang',color: const Color(0xFF3C7DD9),height: 40,),
                ),
                const SizedBox(height: 20,)

              ]
          ),
        ),
      ),
      bottomNavigationBar:  BottomNavigation(),

    );
  }


}
