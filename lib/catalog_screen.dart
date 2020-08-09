import 'package:flutter/material.dart';
import 'productDesc_screen.dart';

class CatalogScreen extends StatefulWidget {
  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Persol'),
    Tab(text: 'Werby'),
    Tab(text: 'Parker'),
    Tab(text: 'Mykita'),
    Tab(text: 'Moscot'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white30,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            )
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return FlatButton(
                  onPressed: () {},
                  child: Image(
                    image: AssetImage("assets/1.png"),
                  ));
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text("Sunglasses",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      letterSpacing: 1.2)),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: TabBar(
                  indicatorWeight: 3,
                  labelPadding: EdgeInsets.all(0),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.red[300],
                  labelColor: Colors.black,
                  tabs: myTabs,
                  controller: _tabController,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(25, 30, 25, 30),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    makeItems(),
                    SizedBox(width: 25),
                    makeItems(),
                    SizedBox(width: 25),
                    makeItems()
                  ],
                ),
              ),
            )
          ],
        ));
  }

  Widget makeItems() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDescScreen(),
          ),
        );
      },
      child: AspectRatio(
        aspectRatio: 5.5 / 9,
        child: GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 3, color: Colors.grey),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Persol PO3214S",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.2,
                        height: 1.2,
                        color: Colors.black,
                        fontSize: 34)),
                Container(
                  height: 105,
                  width: 230,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://static1.lenskart.com/media/desktop/img/14-June-20/599icon.jpg"))),
                ),
                SizedBox(height: 5),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: Text(
                      "Most well respected and distinguished eyewear brands in the world.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.6),
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        height: 1.4,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 20),
                  child: Text("\$202.30",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          height: 1.1,
                          fontSize: 24)),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 35),
                  child: RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.fromLTRB(18, 6, 18, 6),
                    color: Colors.pink[700],
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(13, 10, 13, 10),
                      child: Text(
                        "Add to Cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            height: 1.1,
                            letterSpacing: 0.6),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
