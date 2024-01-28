import 'package:flutter/material.dart';
import 'package:grocery_uikit/widget/faviorite_widget.dart';

import '../accounts/accounts.dart';
import '../constance/color_constant.dart';
import '../constance/icon_constant.dart';
import '../home_screen/category.dart';
import '../home_screen/home_screen.dart';
import '../widget/bottom_navigation_widget.dart';
import 'my_cart.dart';

class Faviorite extends StatefulWidget {
  const Faviorite({super.key});

  @override
  State<Faviorite> createState() => _FavioriteState();
}

class _FavioriteState extends State<Faviorite> {
  bool selectedIndex = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.COLOR_WHITE,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: ColorConstant.COLOR_WHITE,
            centerTitle: true,
            title: Text(
              'Faviorite',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: ColorConstant.COLOR_BLACK,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            child: SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    BottomAppBarWidget(
                      assetImage: ImgConstants.SHOP,
                      text: 'Shop',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                    ),
                    BottomAppBarWidget(
                      assetImage: ImgConstants.EXPLORE,
                      text: 'Category',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CategoryProduct(),
                          ),
                        );
                      },
                    ),
                    BottomAppBarWidget(
                      assetImage: ImgConstants.cart,
                      text: "Cart",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyCart(),
                          ),
                        );
                      },
                    ),
                    BottomAppBarWidget(
                      assetImage: ImgConstants.FAV,
                      text: "Faviorite",
                      color: selectedIndex == true
                          ? ColorConstant.COLOR_THEME_RED
                          : Colors.black,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Faviorite(),
                          ),
                        );
                      },
                    ),
                    BottomAppBarWidget(
                      assetImage: ImgConstants.account,
                      text: "Account",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Accounts(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 20, right: 20, bottom: 100),
              child: Column(children: [
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.45,
                //   child: ListView.builder(
                //       physics: const NeverScrollableScrollPhysics(),
                //       scrollDirection: Axis.vertical,
                //       itemCount: 4,
                //       itemBuilder: (BuildContext context, int index) {
                //         return

                const FavioriteWidget(
                  image: ImgConstants.COCA,
                  title: 'Coca Cola',
                  price: '\$10.00',
                  subtitle: "325 ml, Price",
                ),

                const SizedBox(
                  height: 10,
                ),

                const FavioriteWidget(
                  image: ImgConstants.MILK,
                  title: 'Fresh Milk',
                  price: '\$2.9.00',
                  subtitle: "500 ml, Price",
                ),

                const SizedBox(
                  height: 10,
                ),

                const FavioriteWidget(
                  image: ImgConstants.MEAT,
                  title: 'Meat',
                  price: '\$45.00',
                  subtitle: "1 KG, Price",
                ),

                const SizedBox(
                  height: 10,
                ),

                const FavioriteWidget(
                  image: ImgConstants.BANANA,
                  title: 'Banana',
                  price: '\$5.00',
                  subtitle: "6 piece, Price",
                ),

                const SizedBox(
                  height: 10,
                ),

                const FavioriteWidget(
                  image: ImgConstants.MANGOJUICE,
                  title: 'Mango Juice',
                  price: '\$14.00',
                  subtitle: "1000 ml, Price",
                ),

                const SizedBox(
                  height: 10,
                ),

                const FavioriteWidget(
                  image: ImgConstants.BONE,
                  title: 'Chicken Bone',
                  price: '\$35.00',
                  subtitle: "400 gm, Price",
                ),

                const SizedBox(
                  height: 10,
                ),

                ///Divider
                ///

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side:
                                        const BorderSide(color: Colors.red)))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyCart(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 17.0, bottom: 17),
                      child: Text(
                        "Add All To Cart",
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: ColorConstant.COLOR_BLACK,
                                  fontWeight: FontWeight.w400,
                                ),
                      ),
                    ),
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
