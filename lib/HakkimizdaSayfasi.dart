import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ihlamur_app/ayarlarSayfasi.dart';
import 'package:ihlamur_app/iletisimSayfasi.dart';
import 'package:ihlamur_app/main.dart';
import 'package:ihlamur_app/markalarSayfasi.dart';

class HakkimizdaSayfasi extends StatefulWidget {
  const HakkimizdaSayfasi({Key? key}) : super(key: key);

  @override
  State<HakkimizdaSayfasi> createState() => _HakkimizdaSayfasiState();
}

class _HakkimizdaSayfasiState extends State<HakkimizdaSayfasi> {

  @override
  Widget build(BuildContext context) {

    var ekranBilgisi=MediaQuery.of(context);
    final double eYukseklik=ekranBilgisi.size.height;
    final double eGenisligi=ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Hakkımızda",
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
              Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 16.0,right: 16.0,),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset("resimler/ihlamurDogalUrunleriHakkimizdaResim.jpeg"),
                ),
              ),
              SizedBox(height: 12,),
              Text(
                "Hakkımızda",
                style: GoogleFonts.akayaKanadaka(textStyle: TextStyle(fontSize: eGenisligi/17)),
              ),
              SizedBox(height: 10,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                  child: Text(
                        "Ihlamur Doğal Ürünleri uzun yıllar önce herkesin\n"
                        "güvenle kullanabileceği doğanın ürünlerini sun-\n"
                        "mak üzere yola çıktı.Dünden bugüne değişmeyen\n"
                        "Ihlamur Doğal Ürünleri kalitesi ürün temininden\n"
                        "sunuma değin her aşamada %100 müşteri mem-\n"
                        "nuniyeti ilkesi temelinde hayata geçmektedir.Yüz-\n"
                        "lerce çeşit ürünü milyonlarca insana ulaştıran Ih-\n"
                        "lamur Doğal Ürünleri ticari faaliyetini bugün Antal-\n"
                        "ya Konyaaltı'nda sürdürmektedir.Başta baharat ve\n"
                        "bitki çayları olmak üzere bitkisel yağlardan pek-\n"
                        "meze,organik ürünlerden arı ürünlerine uzanan ge-\n"
                        "niş yelpazemizi macunlar ve doğal kozmetik ürün-\n"
                        "leriyle her geçen gün genişletmeye devam ediyo-\n"
                        "ruz",
                    style: GoogleFonts.inter(textStyle: TextStyle(fontSize: eGenisligi/26)),
                  ),
                ),
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
                Column(
                  children: [
                    SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset("altbarIcon/information-button.png",color: Colors.white,),
                    ),
                    SizedBox(height: 2,),
                    Text(
                      "Hakkımızda",
                      style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,color: Colors.white)),
                    ),
                  ],
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
                        child: Image.asset("altbarIcon/category.png"),
                      ),
                      SizedBox(height: 2,),
                      Text(
                        "Markalar",
                        style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14)),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AyarlarSayfasi()));
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset("altbarIcon/setting.png"),
                      ),
                      SizedBox(height: 2,),
                      Text(
                        "Ayarlar",
                        style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}