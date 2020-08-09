import 'package:flutter/material.dart';

class CatalogScreen extends StatefulWidget {
  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen>
    with SingleTickerProviderStateMixin {
  // TabController controller;
  // @override
  // void initState() {
  //   controller = TabController(length: 3, vsync: this);
  //   super.initState();
  // }
  // @override
  // void dispose(){
  //   controller.dispose();
  //   super.dispose();
  // }

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
        appBar: AppBar(backgroundColor: Colors.white30,elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child:
               Icon(
                Icons.search,
                color: Colors.black,
              ),
            )
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return FlatButton(onPressed: (){}, child: Image(
                image: AssetImage("assets/1.png"),
              ));
              // IconButton(
                  // icon: Icon(Icons.menu, size: 30, color: Colors.black));
            },
          ),
          // title: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [SizedBox(height: 60), Text("HEllo")],
          // ),
          // bottom: PreferredSize(
          //   preferredSize: Size.fromHeight(130),
          //   child: Stack(
          //     children: [
          //       Positioned(bottom: 30,
          //                       child: Text(
          //           "Hello2",
          //           style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          //         ),
          //       ),
          //       TabBar(
          //         controller: _tabController,
          //         tabs: myTabs,
          //       ),
          //     ],
          //     //           child: TabBar(
          //     //   controller: _tabController,
          //     //   tabs: myTabs,
          //     // ),
          //   ),
          // ),
        ),
        // PreferredSize(
        //   preferredSize: Size.fromHeight(130),
        //   child: AppBar(
        //     bottom: TabBar(
        //       controller: _tabController,
        //       tabs: myTabs
        //     ),
        //     actions: [
        //       Padding(
        //         padding: const EdgeInsets.only(right: 12.0),
        //         child: Icon(
        //           Icons.search,
        //           color: Colors.black,
        //         ),
        //       )
        //     ],
        //     backgroundColor: Colors.red,
        //     elevation: 0,
        //     leading: Builder(
        //       builder: (BuildContext context) {
        //         return IconButton(
        //           icon: Icon(
        //             Icons.restaurant_menu,
        //             color: Colors.black,
        //           ),
        //           onPressed: () {
        //             Scaffold.of(context).openDrawer();
        //           },
        //           tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        //         );
        //       },
        //     ),
        //   ),
        // ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left:18.0),
              child: Text("Sunglasses",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,letterSpacing: 1.2)),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left:8,right:8.0),
              child: Container(width: MediaQuery.of(context).size.width,
                child: TabBar(indicatorWeight: 3,labelPadding: EdgeInsets.all(0),indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.red[300],
                  labelColor: Colors.black,
                  tabs: myTabs,
                  controller: _tabController,
                ),
              ),
            ),
    //         Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: ListView(
    //             scrollDirection: Axis.horizontal,
    //             children: [
    //               Card(
    //                                 child: AspectRatio(
    //   aspectRatio: true ? 3 : 2.5 / 1,
    //   child: Container(
    //     margin: EdgeInsets.only(right: 10),
    //     decoration: BoxDecoration(
    //       color: true ? Colors.yellow[700] : Colors.white,
    //       borderRadius: BorderRadius.circular(50),
    //     ),
    //     child: Align(
    //       child: Text(
    //           ("title"),
    //           style: TextStyle(
    //                 color: true ? Colors.white : Colors.grey[500],
    //                 fontSize: 18,
    //                 fontWeight: true ? FontWeight.bold : FontWeight.w100),
    //       ),
    //     ),
    //   ),
    // ),
    //               )
    //             ],
    //           ),
    //         )
          ],
        ));
  }
}
