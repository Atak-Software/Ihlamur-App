import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ihlamur_app/HakkimizdaSayfasi.dart';
import 'package:ihlamur_app/ayarlarSayfasi.dart';
import 'package:ihlamur_app/iletisimSayfasi.dart';
import 'package:ihlamur_app/main.dart';

class MarkalarSayfasi extends StatefulWidget {
  const MarkalarSayfasi({Key? key}) : super(key: key);

  @override
  State<MarkalarSayfasi> createState() => _MarkalarSayfasiState();
}

class _MarkalarSayfasiState extends State<MarkalarSayfasi> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi=MediaQuery.of(context);
    //final double eYukseklik=ekranBilgisi.size.height;
    final double eGenisligi=ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Markalar",
            style: GoogleFonts.akayaKanadaka(textStyle: TextStyle(fontSize: eGenisligi/13)),
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 17,),
              Text(
                "Çalıştığımız Markalar",
                style: GoogleFonts.akayaKanadaka(textStyle: TextStyle(fontSize: eGenisligi/16)),
              ),
              SizedBox(height: 25,),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  height: eGenisligi/2,
                  width: eGenisligi/2,
                  child: Image.asset("resimler/tilunlife.png"),
                ),
              ),
              SizedBox(height: 30,),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  height: eGenisligi/2,
                  width: eGenisligi/2,
                  child: Image.asset("resimler/balen.png"),
                ),
              ),
              SizedBox(height: 30,),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  height: eGenisligi/2,
                  width: eGenisligi/2,
                  child: Image.asset("resimler/yorukcayir.png",fit: BoxFit.contain,),
                ),
              ),
              SizedBox(height: 30,),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  height: eGenisligi/2,
                  width: eGenisligi/2,
                  child: Image.asset("resimler/mecitefendi.jpg",fit: BoxFit.fill,),
                ),
              ),
              SizedBox(height: 30,),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  height: eGenisligi/2,
                  width: eGenisligi/2,
                  child: Image.asset("resimler/Asikzade.jpg"),
                ),
              ),
              SizedBox(height: 30,),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  height: eGenisligi/2,
                  width: eGenisligi/2,
                  child: Image.asset("resimler/themra.png",fit: BoxFit.cover,),
                ),
              ),
              SizedBox(height: 30,),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  height: eGenisligi/2,
                  width: eGenisligi/2,
                  child: Image.asset("resimler/akzer.png",fit: BoxFit.contain,),
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
                Column(
                  children: [
                    SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset("altbarIcon/category.png",color: Colors.white,),
                    ),
                    SizedBox(height: 2,),
                    Text(
                      "Markalar",
                      style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,color: Colors.white)),
                    ),
                  ],
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
