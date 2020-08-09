import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ProductDescScreen extends StatefulWidget {
  @override
  _ProductDescScreenState createState() => _ProductDescScreenState();
}

class _ProductDescScreenState extends State<ProductDescScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0,
        iconTheme: IconThemeData.fallback(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //           image: NetworkImage(
          //               "https://static1.lenskart.com/media/desktop/img/14-June-20/599icon.jpg"))),
          // ),
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: false,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 6,
                dotColor: Colors.black,
                dotIncreasedColor: Colors.red,
                dotBgColor: Colors.transparent,
                dotVerticalPadding: 10,
                dotPosition: DotPosition.bottomCenter,
                showIndicator: true,
                indicatorBgPadding: 7,
                images: [
                  NetworkImage(
                      "https://static1.lenskart.com/media/desktop/img/14-June-20/599icon.jpg"),
                  NetworkImage(
                      "https://static1.lenskart.com/media/desktop/img/14-June-20/599icon.jpg"),
                  ExactAssetImage("assets/1.png"),
                  NetworkImage(
                      "https://static1.lenskart.com/media/desktop/img/14-June-20/599icon.jpg"),
                  NetworkImage(
                      "https://static1.lenskart.com/media/desktop/img/14-June-20/599icon.jpg"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 5),
            child: Text("Persol PO3214S",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                ),
                SizedBox(width: 5),
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.green),
                ),
                SizedBox(width: 5),
                Container(
                  width: 18,
                  height: 18,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "PRODUCT DETAILS",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 17.0, right: 15),
            child: Text(
              "Persol sunglasses are among the most well re-spected and distinguished eyewear brands in the world.",
              style:
                  TextStyle(color: Colors.black.withOpacity(0.7), height: 1.4),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "DELIVERY",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Icon(Icons.arrow_drop_down),
              )
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "RATING & REVIEWS",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Icon(Icons.arrow_drop_down),
              )
            ],
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                child: Container(
                  height: 29,
                  width: 90,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                      child: Text(
                    "-    2    +",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 20,
                ),
                child: Text("\$202.30",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                        color: Colors.black,
                        fontSize: 28)),
              ),
            ],
          ),
          SizedBox(height: 30),
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 35, left: 15, right: 15),
              child: Container(
                width: MediaQuery.of(context).size.width,
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
              ),
            ),
          )
        ],
      )),
    );
  }
}
