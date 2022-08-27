/*
Uygulama Adı: Ihlamur App
Uygulama Tipi: Kurumsal
Altyapı: AGMP (Atak Global Modular Platform)
Altyapı Kodu: AGMPMAWD01
 */
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:ihlamur_app/HakkimizdaSayfasi.dart';
import 'package:ihlamur_app/ayarlarSayfasi.dart';
import 'package:ihlamur_app/iletisimSayfasi.dart';
import 'package:ihlamur_app/markalarSayfasi.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ihlamur App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {

  @override
  Widget build(BuildContext context) {

    var ekranBilgisi=MediaQuery.of(context);

    //final double eYukseklik=ekranBilgisi.size.height;
    final double eGenisligi=ekranBilgisi.size.width;


    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              "Ihlamur App",
              style: GoogleFonts.akayaKanadaka(textStyle: TextStyle(fontSize: eGenisligi/13)),
            )
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 18,),
              Text(
                  "Sizin İçin Seçtiklerimiz",
                  style: GoogleFonts.akayaKanadaka(textStyle: TextStyle(fontSize: eGenisligi/16))
              ),
              SizedBox(height: 25,),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  height: eGenisligi/2,
                  width: eGenisligi/2,
                  child: Image.asset("resimler/egricayirBal.jpg",fit: BoxFit.cover,),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Eğriçayır Organik Karakovan",
                style: GoogleFonts.inter(textStyle: TextStyle(fontSize: eGenisligi/23)),
              ),
              Text(
                  "Petek Bal",
                  style: GoogleFonts.inter(textStyle: TextStyle(fontSize: eGenisligi/23))
              ),
              SizedBox(height: 25,),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  height: eGenisligi/2,
                  width: eGenisligi/2,
                  child: Image.asset("resimler/egricayirPropolis.jpg",fit: BoxFit.cover,),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Eğriçayır Organik Propolis",
                style: GoogleFonts.inter(textStyle: TextStyle(fontSize: eGenisligi/23)),
              ),
              SizedBox(height: 25,),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  height: eGenisligi/2,
                  width: eGenisligi/2,
                  child: Image.asset("resimler/sahbazCayliAriPoleni.jpg",fit: BoxFit.cover,),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Eğriçayır Organik Arı Poleni",
                style: GoogleFonts.inter(textStyle: TextStyle(fontSize: eGenisligi/23)),
              ),
              SizedBox(height: 25,),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  height: eGenisligi/2,
                  width: eGenisligi/2,
                  child: Image.asset("resimler/mecitEfendiElmaSirkesi.png",fit: BoxFit.fitHeight),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Mecitefendi Organik Elma",
                style: GoogleFonts.inter(textStyle: TextStyle(fontSize: eGenisligi/23)),
              ),
              Text(
                "Sirkesi",
                style: GoogleFonts.inter(textStyle: TextStyle(fontSize: eGenisligi/23)),
              ),
              SizedBox(height: 15,),

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
                Column(
                  children: [
                    SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset("altbarIcon/home.png",color: Colors.white,),
                    ),
                    SizedBox(height: 2,),
                    Text(
                      "Ana Sayfa",
                      style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,color: Colors.white)),
                    ),
                  ],
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