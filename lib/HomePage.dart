import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app/ProductPage.dart';
import 'package:shopping_app/models/Product.dart';
import 'package:shopping_app/widgets/CategoryItem.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List bannerAdSlider = [
    "assets/banner1.jpg",
    "assets/banner2.jpg",
    "assets/banner3.jpg",
    "assets/banner4.jpg",
    "assets/banner5.jpg",
    "assets/banner6.jpg",
    "assets/banner7.jpg",
    "assets/banner8.jpg"
  ];

  List<Product> products = [
    Product(
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        image: "assets/product1.jpg",
        price: "100",
        productName: "iPad mini"),
    Product(
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        image: "assets/product2.jpg",
        price: "100",
        productName: "iPad pro"),
    Product(
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        image: "assets/product3.jpg",
        price: "100",
        productName: "iPhone Pro Max"),
    Product(
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        image: "assets/product4.jpg",
        price: "100",
        productName: "Apple Watch Series 3"),
    Product(
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        image: "assets/product5.jpg",
        price: "100",
        productName: "Apple Watch Series 4"),
    Product(
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        image: "assets/product6.jpg",
        price: "100",
        productName: "Macbook pro 16 inch"),
    Product(
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        image: "assets/product7.jpg",
        price: "100",
        productName: "Macbook pro"),
    Product(
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        image: "assets/product8.jpg",
        price: "100",
        productName: "iMac 4k Ratina"),
    Product(
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        image: "assets/product9.jpg",
        price: "100",
        productName: "T-Shirts"),
    Product(
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        image: "assets/product10.jpg",
        price: "100",
        productName: "Ethnic Wear - Dress"),
    Product(
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        image: "assets/product11.jpg",
        price: "100",
        productName: "Dress"),
    Product(
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        image: "assets/product12.jpg",
        price: "100",
        productName: "T-shirt"),
  ];

  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      key: drawerKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Shopper",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
          icon: Icon(EvaIcons.menu2Outline),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(EvaIcons.shoppingBagOutline),
          ),
        ],
      ),
      drawerEdgeDragWidth: 0,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(16),
              ),
              accountEmail: Text(
                "Ribinshad@mail.com",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              accountName: Text("Ribinshad",
              style: TextStyle(
                  color: Colors.black,),),
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image(
                  image: NetworkImage(
                      "https://avatars0.githubusercontent.com/u/61222151?s=400&u=628c2d0e4ee5a72f455f2203d936c96887b07ea1&v=4"),
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height:5),
            ListTile(
              title: Text("Home"),
              leading: Icon(EvaIcons.homeOutline),
            ),
            SizedBox(height:5),

            ListTile(
              title: Text("Account"),
              leading: Icon(EvaIcons.personOutline),
            ),
            SizedBox(height:5),


            ListTile(
              title: Text("Electronics"),
              leading: Icon(EvaIcons.bulbOutline),
            ),
            SizedBox(height:5),


            ListTile(
              title: Text("Fashion"),
              leading: Icon(EvaIcons.heartOutline),
            ),
            SizedBox(height:10),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: 16/5,
                  child: Image.asset("assets/banner8.jpg",fit: BoxFit.cover,),
                  ),
                ),
            ),


          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 18,
                    //fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    CategoryItem(
                      backgroundColor: Color(0xFFffe291),
                      size: 50,
                      icon: EvaIcons.giftOutline,
                      padding: null,
                      margin: EdgeInsets.all(10),
                    ),
                    CategoryItem(
                      backgroundColor: Color(0xFF91bfff),
                      size: 50,
                      icon: EvaIcons.headphonesOutline,
                      padding: null,
                      margin: EdgeInsets.all(10),
                    ),
                    CategoryItem(
                      backgroundColor: Color(0xFFff91c1),
                      size: 50,
                      icon: EvaIcons.hardDriveOutline,
                      padding: null,
                      margin: EdgeInsets.all(10),
                    ),
                    CategoryItem(
                      backgroundColor: Color(0xFF5340de),
                      size: 50,
                      icon: EvaIcons.printerOutline,
                      padding: null,
                      margin: EdgeInsets.all(10),
                    ),
                    CategoryItem(
                      backgroundColor: Color(0xFF47e6a9),
                      size: 50,
                      icon: EvaIcons.videoOutline,
                      padding: null,
                      margin: EdgeInsets.all(10),
                    ),
                    CategoryItem(
                      backgroundColor: Color(0xFFff788e),
                      size: 50,
                      icon: EvaIcons.umbrellaOutline,
                      padding: null,
                      margin: EdgeInsets.all(10),
                    ),
                    CategoryItem(
                      backgroundColor: Color(0xFFff9378),
                      size: 50,
                      icon: EvaIcons.tvOutline,
                      padding: null,
                      margin: EdgeInsets.all(10),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //banners

              CarouselSlider(
                options: CarouselOptions(
                  height: 150,
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                ),
                items: bannerAdSlider.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image(
                            image: AssetImage(i),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),

              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Products",
                  style: TextStyle(
                    fontSize: 18,
                    //fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              GridView.count(
                physics: ClampingScrollPhysics(),
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 1 / 1.27,
                children: products.map((product) {
                  return Stack(
                    children: <Widget>[
                      Column(
                        children: [
                          Container(
                            child: Column(
                              children: <Widget>[
                                Hero(
                                  tag: product.image,
                                  child: AspectRatio(
                                    aspectRatio: 1 / 1,
                                    child: Center(
                                      child: Image(
                                        image: AssetImage(product.image),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  product.productName,
                                ),
                                Text(
                                  "${product.price}\$",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.amber,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductPage(
                                  product: product,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
