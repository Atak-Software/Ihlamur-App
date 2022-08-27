import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ihlamur_app/HakkimizdaSayfasi.dart';
import 'package:ihlamur_app/ayarlarSayfasi.dart';
import 'package:ihlamur_app/main.dart';
import 'package:ihlamur_app/markalarSayfasi.dart';

class IletisimSayfasi extends StatefulWidget {
  const IletisimSayfasi({Key? key}) : super(key: key);

  @override
  State<IletisimSayfasi> createState() => _IletisimSayfasiState();
}

class _IletisimSayfasiState extends State<IletisimSayfasi> {
  Completer<GoogleMapController> haritaKontrol=Completer();
  var baslangicKonum=CameraPosition(target: LatLng(36.8748728,30.6410168),zoom: 22);

  List<Marker> isaretler=<Marker>[];

  Future<void> konumaGit() async {
    GoogleMapController controller=await haritaKontrol.future;

    var gidilecekKonum=CameraPosition(target: LatLng(36.8748728,30.6410168),zoom: 22);

    var gidilecekIsaret=Marker(
      markerId: MarkerId("ID"),
      position: LatLng(36.8748728,30.6410168),
      infoWindow: InfoWindow(title: "Ihlamur Doğal Ürünleri",),
    );
    setState(() {
      isaretler.add(gidilecekIsaret);
    });

    controller.animateCamera(CameraUpdate.newCameraPosition(gidilecekKonum));
  }

  @override
  Widget build(BuildContext context) {

    var ekranBilgisi=MediaQuery.of(context);
    final double eYukseklik=ekranBilgisi.size.height;
    final double eGenisligi=ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "İletişim",
            style: GoogleFonts.akayaKanadaka(textStyle: TextStyle(fontSize: eGenisligi/13)),
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 16,),
            Text(
              "İletişim",
              style: GoogleFonts.akayaKanadaka(textStyle: TextStyle(fontSize: eGenisligi/17)),
            ),
            SizedBox(height: 20,),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Telefon: ",
                      style: GoogleFonts.inter(textStyle: TextStyle(fontSize: eGenisligi/26.5,fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      "0242 229 78 42",
                      style: GoogleFonts.inter(textStyle: TextStyle(fontSize: eGenisligi/26.5)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 3,),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Adres: ",
                      style: GoogleFonts.inter(textStyle: TextStyle(fontSize: eGenisligi/26.5,fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      "\nÖğretmenevleri Mah.,Öğretmenler Cad.\nDüriye Abay Apt.,No:7/A Konyaaltı/Antalya",
                      style: GoogleFonts.inter(textStyle: TextStyle(fontSize: eGenisligi/26.5)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 22,),
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                height: eYukseklik/2.7,
                width: eGenisligi/1.1,
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: baslangicKonum,
                  markers: Set<Marker>.of(isaretler),
                  onMapCreated: (GoogleMapController controller){
                    haritaKontrol.complete(controller);
                  },
                ),
              ),
            ),
            SizedBox(height: 18,),
            SizedBox(
              height: 41,
              width: 120,
              child: ElevatedButton(
                onPressed: (){
                  konumaGit();
                },
                child: Text("Konuma Git",style: TextStyle(fontSize: 14.5),),
              ),
            ),
          ],
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
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HakkimizdaSayfasi()));
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset("altbarIcon/information-button.png",),
                      ),
                      SizedBox(height: 2,),
                      Text(
                        "Hakkımızda",
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
                      child: Image.asset("altbarIcon/question.png",color: Colors.white,),
                    ),
                    SizedBox(height: 2,),
                    Text(
                      "İletişim",
                      style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 14,color: Colors.white)),
                    ),
                  ],
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