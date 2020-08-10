import 'package:flutter/material.dart';

//Membuat Column

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        //SafeArea() digunakan untuk membungkus container agar container tidak rapat atau hinpit ke atas
        //didalam SafeArea() container dijadikan child dari SafeArea()

        //buat colum atau row buatnya di properti child:
        //membuat colum atu row didalam child: SafeArea() tidak bisa double child
        //gunakan children: <Widget>[] agar tidak terjadi double child
        //didalam children: <Widget>[] kita gunakan untuk membuat banyak list widget didalam [] dengan mengunakan lebih Container()
        //ketika mengunakan Colum maka element akan bersusun dari atas kebawah
        child: Column(
          //didalam colum kita bisa memodifikasi element
          //verticalDirection: VerticalDirection.down, digunakan untuk merubah urutan element dari atas kebawah dan meletakkan selurh  element diatas
          //verticalDirection: VerticalDirection.up, digunakan untuk merubah urutan element dari bawak keatas dan meletakkan selurh  element dibawah

          //mainAxisAlignment: MainAxisAlignment.end, digunakan untuk membuat element keseluruhan menjadi dibawah
          //mainAxisAlignment: MainAxisAlignment.center, digunakan untuk membuat element keseluruhan menjadi ditengah
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly, digunakan untuk membuat jarak antar tiap block element tanpa mengunakan margin dan tidak memenuhi keseluruhan screen
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,digunakan untuk mebuat jarak antart tiap block element tanpa margin namun memenuhi keseluruhan screen

          //crossAxisAlignment: CrossAxisAlignment.end, digunakan untuk menentukan ukuran akhir dari element ketika diberi nilai misal pada widht: 300.0
          //crossAxisAlignment: CrossAxisAlignment.stretch, digunakan untuk membuat ukuran lebar/tinggi menjadi infinity tanpa diberi ukuran widh: double.infinity
          //crossAxisAlignment: CrossAxisAlignment.stretch, tidak perlu menentukan properti width:, ini berlaku ketika kita memakai Column
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 100.0,
              color: Colors.white,
              child: Text('Container 1'),
            ),

            //SizedBox digunakan untuk pemisah antar block element seperti margin gunakan sesuai colum dan row
            //kalau colum makan gunakan height
            //kalau row gunakan width
            SizedBox(
              height: 20.0,
            ),

            Container(
              height: 100.0,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              height: 100.0,
              color: Colors.red,
              child: Text('Container 3'),
            )
          ],
        ),
      ),
    ));
  }
}
