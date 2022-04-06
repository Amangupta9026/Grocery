import 'package:flutter/material.dart';
import 'package:nector_grocery/accounts/accounts.dart';
import 'package:nector_grocery/home_screen/product_detail.dart';
import 'package:nector_grocery/home_screen/search.dart';
import 'package:nector_grocery/widget/exclusive_offer.dart';

import '../checkout/faviorite.dart';
import '../checkout/my_cart.dart';
import '../constance/color_constant.dart';
import '../constance/icon_constant.dart';
import '../widget/bottom_navigation_widget.dart';
import 'home_screen.dart';

class CategoryProduct extends StatefulWidget {
  const CategoryProduct({Key? key}) : super(key: key);

  @override
  State<CategoryProduct> createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProduct> {
  bool selectedIndex = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.COLOR_WHITE,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
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
                      color: selectedIndex == true
                          ? ColorConstant.COLOR_THEME_RED
                          : Colors.black,
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
              padding:
                  const EdgeInsets.only(left: 20, right: 20, bottom: 100.0),
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Category",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: ColorConstant.COLOR_BLACK,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),

                // Search

                const SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 16),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchFilter()));
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: ColorConstant.COLOR_GREY, width: 1),
                          color: const Color(0xffF2F3F2)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Row(children: [
                          const Icon(Icons.search, size: 22),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Search",
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                Wrap(
                  runSpacing: 15,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProductDetail(
                                      selectproductText: "Fruit & Vegetable",
                                      selectproductImage: ImgConstants.VEG,
                                    )));
                      },
                      child: const ExclusiveOffer(
                        image: ImgConstants.VEG,
                        title: "Fruit & Vegetable",
                        color: Color(0xffEEF7F1),
                        bordercolor: Color(0xffEEF7F1),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProductDetail(
                                      selectproductText: "Oil & Ghee",
                                      selectproductImage: ImgConstants.OIL,
                                    )));
                      },
                      child: const ExclusiveOffer(
                        image: ImgConstants.OIL,
                        title: "Oil & Ghee",
                        color: Color(0xffFEF6ED),
                        bordercolor: Color(0xffFEF6ED),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProductDetail(
                                      selectproductText: "Meat & Fish",
                                      selectproductImage: ImgConstants.MEAT,
                                    )));
                      },
                      child: const ExclusiveOffer(
                        image: ImgConstants.MEAT,
                        title: "Meat & Fish",
                        color: Color(0xffFDE8E4),
                        bordercolor: Color(0xffFDE8E4),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProductDetail(
                                      selectproductText: "Bakery & Snack",
                                      selectproductImage: ImgConstants.BAKERY,
                                    )));
                      },
                      child: const ExclusiveOffer(
                        image: ImgConstants.BAKERY,
                        title: "Bakery & Snack",
                        color: Color(0xffF4EBF7),
                        bordercolor: Color(0xffF4EBF7),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProductDetail(
                                      selectproductText: "Dairy & Eggs",
                                      selectproductImage: ImgConstants.MILK,
                                    )));
                      },
                      child: const ExclusiveOffer(
                        image: ImgConstants.MILK,
                        title: "Dairy & Eggs",
                        color: Color(0xffFEF8E5),
                        bordercolor: Color(0xffFEF8E5),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProductDetail(
                                      selectproductText: "Beverages",
                                      selectproductImage:
                                          ImgConstants.BEVERAGES,
                                    )));
                      },
                      child: const ExclusiveOffer(
                        image: ImgConstants.BEVERAGES,
                        title: "Beverages",
                        color: Color(0xffEDF7FC),
                        bordercolor: Color(0xffEDF7FC),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProductDetail(
                                      selectproductText: "Juice & Drink",
                                      selectproductImage:
                                          ImgConstants.APPLEJUICE,
                                    )));
                      },
                      child: const ExclusiveOffer(
                        image: ImgConstants.MANGOJUICE,
                        title: "Juice & Drink",
                        color: Color(0xffF4EBF7),
                        bordercolor: Color(0xffF4EBF7),
                      ),
                    ),
                  ],
                )
                // SingleChildScrollView(
                //   child: GridView.count(
                //       padding: EdgeInsets.zero,
                //       scrollDirection: Axis.vertical,
                //       physics: const ScrollPhysics(),
                //       crossAxisCount: 2,
                //       crossAxisSpacing: 12.0,
                //       mainAxisSpacing: 12.0,
                //       shrinkWrap: true,
                //       children: List.generate(2, (index) {
                //         return InkWell(
                //           onTap: () {
                //             Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (context) => const Beverages()),
                //             );
                //           },
                //           child: Container(
                //             decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(10),
                //                 color: Colors.white,
                //                 //_color,
                //                 border:
                //                     Border.all(color: Colors.grey, width: 1.5)),
                //             child: Padding(
                //               padding:
                //                   const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                //               child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     const SizedBox(
                //                       height: 30,
                //                     ),
                //                     Center(
                //                       child: Image.asset(
                //                         ImgConstants.BEVERAGES,
                //                         //  height: 60,
                //                         width: 80,
                //                       ),
                //                     ),
                //                     const SizedBox(
                //                       height: 15,
                //                     ),
                //                     Center(
                //                       child: Text(
                //                         "Beverages",
                //                         textAlign: TextAlign.center,
                //                         style: Theme.of(context)
                //                             .textTheme
                //                             .subtitle2
                //                             ?.copyWith(
                //                               color: ColorConstant.COLOR_BLACK,
                //                               fontWeight: FontWeight.w600,
                //                             ),
                //                       ),
                //                     ),
                //                   ]),
                //             ),
                //           ),
                //         );
                //       })),
                // )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
