import 'package:flutter/material.dart';
import 'catalog_screen.dart';
void main() {
  runApp(MyApp());
}

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

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://images-na.ssl-images-amazon.com/images/I/513e46IzSXL._AC_SY450_.jpg"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 240),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(28),
                        bottomLeft: Radius.circular(28),
                      ),
                    ),
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(18, 10, 10, 10),
                          child: Center(
                            child: GestureDetector(onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> CatalogScreen()));
                            },
                              child: Text(
                                "Go Shopping",
                                style: TextStyle(
                                  letterSpacing: 1.5,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_forward)
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
