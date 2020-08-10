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
        child: Row(
          //didalam colum kita bisa memodifikasi element
          //verticalDirection: VerticalDirection.down, digunakan untuk merubah urutan element dari atas kebawah dan meletakkan selurh  element diatas
          //verticalDirection: VerticalDirection.up, digunakan untuk merubah urutan element dari bawak keatas dan meletakkan selurh  element dibawah

          //mainAxisAlignment: MainAxisAlignment.end, digunakan untuk membuat element keseluruhan menjadi dibawah
          //mainAxisAlignment: MainAxisAlignment.center, digunakan untuk membuat element keseluruhan menjadi ditengah
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly, digunakan untuk membuat jarak antar tiap block element tanpa mengunakan margin dan tidak memenuhi keseluruhan screen
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,digunakan untuk mebuat jarak antart tiap block element tanpa margin namun memenuhi keseluruhan screen

          // <= crossAxisAlignment: BERLAKU KETIKA MENGUNAKAN COLUM DAN ROWS =>
          //crossAxisAlignment: CrossAxisAlignment.end, digunakan untuk menentukan ukuran akhir dari element ketika diberi nilai misal pada height: 300.0
          //crossAxisAlignment: CrossAxisAlignment.stretch, digunakan untuk membuat ukuran lebar/tinggi menjadi infinity tanpa diberi ukuran heiht:
          //crossAxisAlignment: CrossAxisAlignment.stretch, tidak perlu menentukan properti height:, ini berlaku ketika kita memakai Row
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: 30.0,
              color: Colors.white,
              child: Text('Container 1'),
            ),

            //SizedBox digunakan untuk pemisah antar block element seperti margin gunakan sesuai colum dan row
            //kalau colum makan gunakan height
            //kalau row gunakan width
            SizedBox(
              width: 30.0,
            ),

            Container(
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              color: Colors.red,
              child: Text('Container 3'),
            )
          ],
        ),
      ),
    ));
  }
}
