import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: GridView(
          //ATTRIBUTE INI UNTUK MENGATUR PROPERTI DARI GRID VIEW
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

            //TOTAL GRID DALAM 1 BIDANG, MISAL 3 MAKA AKAN BERISI 3 ELEMENT KEKANAN DAN ELEMEN KE-4 AKAN DISIMPAN DIBAWAHNYA SECARA OTOMATIS
            crossAxisCount: 3,

            //MENGATUR JARAK ANTARA OBJEK ATAS DAN BAWAH
            mainAxisSpacing: 3.0,

            //MENGATUR JARAK ANTARA OBJEK KIRI DAN KANAN
            crossAxisSpacing: 3,

            //ASPEK RASIONYA KITA SET BANDING 1 SAJA
            childAspectRatio: 1,
          ),
          children: <Widget>[
            Container(
              color: Colors.pink,
              height: 200,
              child: Center(
                child: Text(
                  'Flutter',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              height: 200,
              child: Center(
                child: Text(
                  'Laravel',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.amber,
              height: 200,
              child: Center(
                child: Text(
                  'Vue.js',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.yellow,
              height: 200,
              child: Center(
                child: Text(
                  'Javascript',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              height: 200,
              child: Center(
                child: Text(
                  'PHP',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.black,
              height: 200,
              child: Center(
                child: Text(
                  'Java',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
