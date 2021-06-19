import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicine/main_page/main_home_screen/shopping.dart';
import 'package:medicine/main_page/screens/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:medicine/navigation_buttons/drawer.dart';
import 'package:medicine/widgets/card-shopping.dart';
import 'package:typicons_flutter/typicons.dart';

class MainHomeScreen extends StatelessWidget {
  var cryptoData = CryptoData.getData;
  @override
  Widget build(BuildContext context) {
    String m;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("iHerb")),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
          ),
        ],
      ),
      body: MyCards(),
      drawer: ArgonDrawer(
          currentPage: ModalRoute.of(context).settings.name.toString()),
    );
  }
}

class MyCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              CardShopping(
                  body: "California Gold Nutrition, Vitamin D3, 125 mcg",
                  stock: true,
                  price: "754.78",
                  img: "https://s3.images-iherb.com/mli/mli00952/v/83.jpg",
                  deleteOnPress: () {}),
              SizedBox(height: 20),
              CardShopping(
                  body: "California Gold Nutrition, Vitamin D3, 125 mcg",
                  stock: true,
                  price: "754.78",
                  img: "https://s3.images-iherb.com/mli/mli00952/v/83.jpg",
                  deleteOnPress: () {}),
              SizedBox(height: 20),
              CardShopping(
                  body: "California Gold Nutrition, Vitamin D3, 125 mcg",
                  stock: true,
                  price: "754.78",
                  img: "https://s3.images-iherb.com/mli/mli00952/v/83.jpg",
                  deleteOnPress: () {}),
              SizedBox(height: 20),
              CardShopping(
                  body: "California Gold Nutrition, Vitamin D3, 125 mcg",
                  stock: true,
                  price: "754.78",
                  img: "https://s3.images-iherb.com/mli/mli00952/v/83.jpg",
                  deleteOnPress: () {}),
              SizedBox(height: 20),
              CardShopping(
                  body: "California Gold Nutrition, Vitamin D3, 125 mcg",
                  stock: true,
                  price: "754.78",
                  img: "https://s3.images-iherb.com/mli/mli00952/v/83.jpg",
                  deleteOnPress: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
