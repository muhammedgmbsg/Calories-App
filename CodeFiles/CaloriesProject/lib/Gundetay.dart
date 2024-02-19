import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gundetay extends StatefulWidget {
  Gundetay({super.key});

  @override
  State<Gundetay> createState() => _GundetayState();
}

class _GundetayState extends State<Gundetay> {
  bool chechboxState = false;
  var _seciliKalori;
  var _seciliKaloriEt;
  var _seciliKaloriManti;
  var _seciliKaloriBalik;
  var _seciliKaloriDolma;
  var _seciliKaloriSalata;
  var _seciliKaloriKola;
  var _seciliKaloriAyran;

  int _kaloriMiktar = 0;
  int _kaloriToplam = 0;
  Color kaloriRenk = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blueGrey,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                title: Text("Besinler"),
                centerTitle: true,
                background: Image.asset(
                  "images/foto.jpg",
                  fit: BoxFit.cover,
                )),
            expandedHeight: 200, // ekranda kapladığı yer,
            floating: false, // yukarı scrollda doğrudan app bar gözüksünmü
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 25, 0, 15),
            sliver: SliverList(
                //SliverList Sabit
                delegate: SliverChildListDelegate(sabitListeElemanlari)),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(75, 0, 75, 20),
            sliver: SliverList(
                //SliverList Sabit
                delegate: SliverChildListDelegate(sabitListeElemanlari2)),
          ),
        ],
      ),
    );
  }

  List<Widget> get sabitListeElemanlari {
    return [
      Row(
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Tavuk',
                style: TextStyle(fontSize: 19, color: Colors.blueGrey),
              )),
          SizedBox(
            width: 20,
          ),
          DropdownButton<String>(
            //DropDownButton 1
            items: [
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.green,
                    ),
                    Text('  Yarım Porsiyon'),
                  ],
                ),
                value: '250',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.blue,
                    ),
                    Text('  Tam Porsiyon'),
                  ],
                ),
                value: '500',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.red,
                    ),
                    Text('  İki Porsiyon'),
                  ],
                ),
                value: '1000',
              ),
            ],
            onChanged: (deger) {
              setState(() {
                _kaloriMiktar = int.parse(deger!);
                _seciliKalori = deger;
                debugPrint('$_kaloriMiktar');
              });
            },
            hint: Text(
              'Porsiyon Seçiniz',
              style: TextStyle(fontSize: 16),
            ),
            value: _seciliKalori,
          ),
          SizedBox(
            width: 34,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _kaloriToplam += _kaloriMiktar;
                if (_kaloriToplam <= 1000) {
                  kaloriRenk = Colors.green;
                } else if (_kaloriToplam > 1000 && _kaloriToplam <= 2000) {
                  kaloriRenk = Colors.blue;
                } else if (_kaloriToplam > 2000) {
                  kaloriRenk = Colors.red;
                }
                debugPrint('$_kaloriToplam');
              });
            },
            child: Text(
              'Ekle',
              style: TextStyle(fontSize: 15),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Et',
                style: TextStyle(fontSize: 19, color: Colors.blueGrey),
              )),
          SizedBox(
            width: 22,
          ),
          DropdownButton<String>(
            //DropDownButton 1
            items: [
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.green,
                    ),
                    Text('  Yarım Porsiyon'),
                  ],
                ),
                value: '250',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.blue,
                    ),
                    Text('  Tam Porsiyon'),
                  ],
                ),
                value: '500',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.red,
                    ),
                    Text('  İki Porsiyon'),
                  ],
                ),
                value: '1000',
              ),
            ],
            onChanged: (deger) {
              setState(() {
                _kaloriMiktar = int.parse(deger!);
                _seciliKaloriEt = deger;
                debugPrint('$_kaloriMiktar');
              });
            },
            hint: Text(
              'Porsiyon Seçiniz',
              style: TextStyle(fontSize: 16),
            ),
            value: _seciliKaloriEt,
          ),
          SizedBox(
            width: 35,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _kaloriToplam += _kaloriMiktar;
                if (_kaloriToplam <= 1000) {
                  kaloriRenk = Colors.green;
                } else if (_kaloriToplam > 1000 && _kaloriToplam <= 2000) {
                  kaloriRenk = Colors.blue;
                } else if (_kaloriToplam > 2000) {
                  kaloriRenk = Colors.red;
                }
                debugPrint('$_kaloriToplam');
              });
            },
            child: Text(
              'Ekle',
              style: TextStyle(fontSize: 15),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Mantı',
                style: TextStyle(fontSize: 19, color: Colors.blueGrey),
              )),
          SizedBox(
            width: 20,
          ),
          DropdownButton<String>(
            //DropDownButton 1
            items: [
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.green,
                    ),
                    Text('  Yarım Porsiyon'),
                  ],
                ),
                value: '250',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.blue,
                    ),
                    Text('  Tam Porsiyon'),
                  ],
                ),
                value: '500',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.red,
                    ),
                    Text('  İki Porsiyon'),
                  ],
                ),
                value: '1000',
              ),
            ],
            onChanged: (deger) {
              setState(() {
                _kaloriMiktar = int.parse(deger!);
                _seciliKaloriManti = deger;
                debugPrint('$_kaloriMiktar');
              });
            },
            hint: Text(
              'Porsiyon Seçiniz',
              style: TextStyle(fontSize: 16),
            ),
            value: _seciliKaloriManti,
          ),
          SizedBox(
            width: 36,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _kaloriToplam += _kaloriMiktar;
                if (_kaloriToplam <= 1000) {
                  kaloriRenk = Colors.green;
                } else if (_kaloriToplam > 1000 && _kaloriToplam <= 2000) {
                  kaloriRenk = Colors.blue;
                } else if (_kaloriToplam > 2000) {
                  kaloriRenk = Colors.red;
                }
                debugPrint('$_kaloriToplam');
              });
            },
            child: Text(
              'Ekle',
              style: TextStyle(fontSize: 15),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Balık',
                style: TextStyle(fontSize: 19, color: Colors.blueGrey),
              )),
          SizedBox(
            width: 21,
          ),
          DropdownButton<String>(
            //DropDownButton 1
            items: [
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.green,
                    ),
                    Text('  Yarım Porsiyon'),
                  ],
                ),
                value: '250',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.blue,
                    ),
                    Text('  Tam Porsiyon'),
                  ],
                ),
                value: '500',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.red,
                    ),
                    Text('  İki Porsiyon'),
                  ],
                ),
                value: '1000',
              ),
            ],
            onChanged: (deger) {
              setState(() {
                _kaloriMiktar = int.parse(deger!);
                _seciliKaloriBalik = deger;
                debugPrint('$_kaloriMiktar');
              });
            },
            hint: Text(
              'Porsiyon Seçiniz',
              style: TextStyle(fontSize: 16),
            ),
            value: _seciliKaloriBalik,
          ),
          SizedBox(
            width: 35,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _kaloriToplam += _kaloriMiktar;
                if (_kaloriToplam <= 1000) {
                  kaloriRenk = Colors.green;
                } else if (_kaloriToplam > 1000 && _kaloriToplam <= 2000) {
                  kaloriRenk = Colors.blue;
                } else if (_kaloriToplam > 2000) {
                  kaloriRenk = Colors.red;
                }
                debugPrint('$_kaloriToplam');
              });
            },
            child: Text(
              'Ekle',
              style: TextStyle(fontSize: 15),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Dolma',
                style: TextStyle(fontSize: 19, color: Colors.blueGrey),
              )),
          SizedBox(
            width: 15,
          ),
          DropdownButton<String>(
            //DropDownButton 1
            items: [
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.green,
                    ),
                    Text('  Yarım Porsiyon'),
                  ],
                ),
                value: '250',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.blue,
                    ),
                    Text('  Tam Porsiyon'),
                  ],
                ),
                value: '500',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.red,
                    ),
                    Text('  İki Porsiyon'),
                  ],
                ),
                value: '1000',
              ),
            ],
            onChanged: (deger) {
              setState(() {
                _kaloriMiktar = int.parse(deger!);
                _seciliKaloriDolma = deger;
                debugPrint('$_kaloriMiktar');
              });
            },
            hint: Text(
              'Porsiyon Seçiniz',
              style: TextStyle(fontSize: 16),
            ),
            value: _seciliKaloriDolma,
          ),
          SizedBox(
            width: 34,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _kaloriToplam += _kaloriMiktar;
                if (_kaloriToplam <= 1000) {
                  kaloriRenk = Colors.green;
                } else if (_kaloriToplam > 1000 && _kaloriToplam <= 2000) {
                  kaloriRenk = Colors.blue;
                } else if (_kaloriToplam > 2000) {
                  kaloriRenk = Colors.red;
                }
                debugPrint('$_kaloriToplam');
              });
            },
            child: Text(
              'Ekle',
              style: TextStyle(fontSize: 15),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Salata',
                style: TextStyle(fontSize: 19, color: Colors.blueGrey),
              )),
          SizedBox(
            width: 17,
          ),
          DropdownButton<String>(
            //DropDownButton 1
            items: [
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.green,
                    ),
                    Text('  Yarım Porsiyon'),
                  ],
                ),
                value: '250',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.blue,
                    ),
                    Text('  Tam Porsiyon'),
                  ],
                ),
                value: '500',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.red,
                    ),
                    Text('  İki Porsiyon'),
                  ],
                ),
                value: '1000',
              ),
            ],
            onChanged: (deger) {
              setState(() {
                _kaloriMiktar = int.parse(deger!);
                _seciliKaloriSalata = deger;
                debugPrint('$_kaloriMiktar');
              });
            },
            hint: Text(
              'Porsiyon Seçiniz',
              style: TextStyle(fontSize: 16),
            ),
            value: _seciliKaloriSalata,
          ),
          SizedBox(
            width: 33,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _kaloriToplam += _kaloriMiktar;
                if (_kaloriToplam <= 1000) {
                  kaloriRenk = Colors.green;
                } else if (_kaloriToplam > 1000 && _kaloriToplam <= 2000) {
                  kaloriRenk = Colors.blue;
                } else if (_kaloriToplam > 2000) {
                  kaloriRenk = Colors.red;
                }
                debugPrint('$_kaloriToplam');
              });
            },
            child: Text(
              'Ekle',
              style: TextStyle(fontSize: 15),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Kola',
                style: TextStyle(fontSize: 19, color: Colors.blueGrey),
              )),
          SizedBox(
            width: 23,
          ),
          DropdownButton<String>(
            //DropDownButton 1
            items: [
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.green,
                    ),
                    Text('  Yarım Porsiyon'),
                  ],
                ),
                value: '250',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.blue,
                    ),
                    Text('  Tam Porsiyon'),
                  ],
                ),
                value: '500',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.red,
                    ),
                    Text('  İki Porsiyon'),
                  ],
                ),
                value: '1000',
              ),
            ],
            onChanged: (deger) {
              setState(() {
                _kaloriMiktar = int.parse(deger!);
                _seciliKaloriKola = deger;
                debugPrint('$_kaloriMiktar');
              });
            },
            hint: Text(
              'Porsiyon Seçiniz',
              style: TextStyle(fontSize: 16),
            ),
            value: _seciliKaloriKola,
          ),
          SizedBox(
            width: 33,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _kaloriToplam += _kaloriMiktar;
                if (_kaloriToplam <= 1000) {
                  kaloriRenk = Colors.green;
                } else if (_kaloriToplam > 1000 && _kaloriToplam <= 2000) {
                  kaloriRenk = Colors.blue;
                } else if (_kaloriToplam > 2000) {
                  kaloriRenk = Colors.red;
                }
                debugPrint('$_kaloriToplam');
              });
            },
            child: Text(
              'Ekle',
              style: TextStyle(fontSize: 15),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Ayran',
                style: TextStyle(fontSize: 19, color: Colors.blueGrey),
              )),
          SizedBox(
            width: 22,
          ),
          DropdownButton<String>(
            //DropDownButton 1
            items: [
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.green,
                    ),
                    Text('  Yarım Porsiyon'),
                  ],
                ),
                value: '250',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.blue,
                    ),
                    Text('  Tam Porsiyon'),
                  ],
                ),
                value: '500',
              ),
              DropdownMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.square,
                      color: Colors.red,
                    ),
                    Text('  İki Porsiyon'),
                  ],
                ),
                value: '1000',
              ),
            ],
            onChanged: (deger) {
              setState(() {
                _kaloriMiktar = int.parse(deger!);
                _seciliKaloriAyran = deger;
                debugPrint('$_kaloriMiktar');
              });
            },
            hint: Text(
              'Porsiyon Seçiniz',
              style: TextStyle(fontSize: 16),
            ),
            value: _seciliKaloriAyran,
          ),
          SizedBox(
            width: 34,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _kaloriToplam += _kaloriMiktar;
                if (_kaloriToplam <= 1000) {
                  kaloriRenk = Colors.green;
                } else if (_kaloriToplam > 1000 && _kaloriToplam <= 2000) {
                  kaloriRenk = Colors.blue;
                } else if (_kaloriToplam > 2000) {
                  kaloriRenk = Colors.red;
                }
                debugPrint('$_kaloriToplam');
              });
            },
            child: Text(
              'Ekle',
              style: TextStyle(fontSize: 15),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
          ),
        ],
      ),
      SizedBox(
        height: 0,
      )
    ];
  }

  List<Widget> get sabitListeElemanlari2 {
    return [
      Row(
        children: [
          SizedBox(
            width: 50,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _kaloriToplam = 0;
                var _seciliKalori = null;
                _seciliKaloriEt = null;
                _seciliKaloriManti = null;
                _seciliKaloriBalik = null;
                _seciliKaloriDolma = null;
                _seciliKaloriSalata = null;
                _seciliKaloriKola = null;
                _seciliKaloriAyran = null;
                kaloriRenk = Colors.green;
              });
            },
            child: Text('Sıfırla'),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey.shade800),
          ),
          SizedBox(
            width: 25,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(_kaloriToplam);
              debugPrint('toplamkalori: $_kaloriToplam');
            },
            child: Text('Kaydet'),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey.shade800),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        color: Colors.blueGrey.shade800,
        child: Row(
          children: [
            SizedBox(
              width: 7,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Toplam Kalori:',
                  style: TextStyle(fontSize: 20, color: kaloriRenk),
                )),
            Text(
              '$_kaloriToplam',
              style: TextStyle(
                fontSize: 20,
                color: kaloriRenk,
              ),
            ),
          ],
        ),
      ),
    ];
  }
}
