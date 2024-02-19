// ignore: file_names
import 'package:diyetproje/Gundetay.dart';
import 'package:diyetproje/Yiyecekler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  Yiyecekler y = new Yiyecekler();
  List<int> kayitliKalori = List.generate(7, (index) => 0);

  int? gelenKalori = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Kalori Hesaplama'), backgroundColor: Colors.blueGrey),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            var gunlerL = y.GunlerDizi[index];
            var sayi = kayitliKalori[index];
            if (index == 8) {
              index = 7;
            }
            return Padding(
              padding: const EdgeInsets.all(2.5),
              child: Card(
                elevation: 5,
                child: ListTile(
                  onTap: () async {
                    gelenKalori =
                        await Navigator.of(context).push<int>(MaterialPageRoute(
                      builder: (
                        ilericontext,
                      ) =>
                          Gundetay(),
                    ));

                    setState(() {
                      kayitEt(index);
                    });
                  },
                  trailing: Icon(
                    Icons.food_bank_outlined,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    gunlerL,
                    style: TextStyle(fontSize: (18)),
                  ),
                  subtitle: Text(
                    'Kaydedilen Kalori: $sayi',
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 151, 0, 0)),
                  ),
                ),
              ),
            );
          },
          itemCount: y.GunlerDizi.length,
        ),
      ),
    );
  }

  kayitEt(indis) {
    if (gelenKalori != 0) {
      kayitliKalori[indis] = gelenKalori ?? 0;
    }
  }
}
