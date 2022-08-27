import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ihlamur_app/HakkimizdaSayfasi.dart';
import 'package:ihlamur_app/iletisimSayfasi.dart';
import 'package:ihlamur_app/main.dart';
import 'package:ihlamur_app/markalarSayfasi.dart';

class AyarlarSayfasi extends StatefulWidget {
  const AyarlarSayfasi({Key? key}) : super(key: key);

  @override
  State<AyarlarSayfasi> createState() => _AyarlarSayfasiState();
}

class _AyarlarSayfasiState extends State<AyarlarSayfasi> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi=MediaQuery.of(context);
    final double eYukseklik=ekranBilgisi.size.height;
    final double eGenisligi=ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Ayarlar",
            style: GoogleFonts.akayaKanadaka(textStyle: TextStyle(fontSize: eGenisligi/13)),
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "Uygulama Hakkında",
                style: GoogleFonts.akayaKanadaka(textStyle: TextStyle(fontSize: eGenisligi/16)),
              ),
              SizedBox(height: 20),
              Container(
                height: 180,
                width: eGenisligi/1.12,
                child: Center(
                  child: Text(
                    "ATAK",
                    style: TextStyle(
                        fontFamily: 'ACSoftIceCream',
                        fontSize: eGenisligi/8.5,color: Colors.white
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
              ),
              SizedBox(height: 32),
              Container(
                height: eYukseklik/3.5,
                width: eGenisligi/1.07,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Uygulama Adı:",
                              style: GoogleFonts.inconsolata(
                                textStyle: TextStyle(fontSize: eGenisligi/22,color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              " Ihlamur App",
                              style: GoogleFonts.inconsolata(
                                textStyle: TextStyle(fontSize: eGenisligi/22,color: Colors.white,),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 14,),
                        Row(
                          children: [
                            Text(
                              "Uygulama Tipi:",
                              style: GoogleFonts.inconsolata(
                                textStyle: TextStyle(fontSize: eGenisligi/22,color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              " Kurumsal",
                              style: GoogleFonts.inconsolata(
                                textStyle: TextStyle(fontSize: eGenisligi/22,color: Colors.white,),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 14,),
                        Row(
                          children: [
                            Text(
                              "Altyapı:",
                              style: GoogleFonts.inconsolata(
                                textStyle: TextStyle(fontSize: eGenisligi/22,color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              " Atak Global Modular Platform",
                              style: GoogleFonts.inconsolata(fontSize: eGenisligi/22,color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 14,),
                        Row(
                          children: [
                            Text(
                              "Altyapı Kodu:",
                              style: GoogleFonts.inconsolata(
                                textStyle: TextStyle(fontSize: eGenisligi/22,color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              " AGMPMAWD01",
                              style: GoogleFonts.inconsolata(fontSize: eGenisligi/22,color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 14,),
                        Row(
                          children: [
                            Text(
                                "Versiyon:",
                                style: GoogleFonts.inconsolata(
                                  textStyle: TextStyle(fontSize: eGenisligi/22,color: Colors.white,fontWeight: FontWeight.bold),
                                )
                            ),
                            Text(
                              " V1.0.3",
                              style: GoogleFonts.inconsolata(
                                textStyle: TextStyle(fontSize: eGenisligi/22,color: Colors.white,),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 35,),
              Text(
                "By Atak",
                style: TextStyle(fontFamily: 'ACSoftIceCream',fontSize: eGenisligi/22),
              ),
              SizedBox(height: 8,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 57,
          color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.only(top: 7.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AnaSayfa()));
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset("altbarIcon/home.png",),
                      ),
                      SizedBox(height: 2,),
                      Text(
                        "Ana Sayfa",
                        style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,)),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => HakkimizdaSayfasi())
                    );
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset("altbarIcon/information-button.png"),
                      ),
                      SizedBox(height: 2,),
                      Text(
                        "Hakkımızda",
                        style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14)),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => IletisimSayfasi()));
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset("altbarIcon/question.png"),
                      ),
                      SizedBox(height: 2,),
                      Text(
                        "İletişim",
                        style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14)),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MarkalarSayfasi()));
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset("altbarIcon/category.png",),
                      ),
                      SizedBox(height: 2,),
                      Text(
                        "Markalar",
                        style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,)),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset("altbarIcon/setting.png",color: Colors.white,),
                    ),
                    SizedBox(height: 2,),
                    Text(
                      "Ayarlar",
                      style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,color: Colors.white)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
