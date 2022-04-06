import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:nector_grocery/accounts/accounts.dart';
import 'package:nector_grocery/home_screen/product_detail.dart';
import 'package:nector_grocery/home_screen/search.dart';
import 'package:nector_grocery/widget/exclusive_offer.dart';

import '../checkout/faviorite.dart';
import '../checkout/my_cart.dart';
import '../constance/color_constant.dart';
import '../constance/icon_constant.dart';
import 'package:random_color/random_color.dart';

import '../widget/bottom_navigation_widget.dart';
import '../widget/pulse_widget.dart';
import 'category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _ProState();
}

class _ProState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    RandomColor _randomColor = RandomColor();

    Color _color =
        _randomColor.randomColor(colorBrightness: ColorBrightness.light);

    bool selectedIndex = true;

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
                      color: selectedIndex == true
                          ? ColorConstant.COLOR_THEME_RED
                          : Colors.black,
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
              padding: const EdgeInsets.only(bottom: 100.0),
              child: Column(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Image.asset(
                      ImgConstants.CARROT,
                      width: 40,
                      height: 35,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Dhaka, Banassre",
                          style:
                              Theme.of(context).textTheme.subtitle1?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Column(
                        children: [
                          // SearchBar(),

                          const SizedBox(
                            height: 15,
                          ),

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SearchFilter()));
                            },
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: ColorConstant.COLOR_GREY,
                                      width: 1),
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                          color: ColorConstant.COLOR_BLACK,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ]),
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          SizedBox(
                            height: 120.0,
                            child: Card(
                              elevation: 4.0,
                              color: ColorConstant.COLOR_WHITE,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Swiper(
                                autoplay: true,
                                itemCount: 3,
                                itemBuilder:
                                    (BuildContext context, int index) =>
                                        Carousel(
                                  boxFit: BoxFit.cover,
                                  images: [
                                    Image.asset(
                                      ImgConstants.BANNER,
                                      width: double.infinity,
                                    ),
                                  ],
                                  dotSize: 4.0,
                                  dotSpacing: 15.0,
                                  dotColor: ColorConstant.COLOR_RED,
                                  indicatorBgPadding: 5.0,
                                  dotBgColor: Colors.transparent,
                                  borderRadius: true,
                                ),
                              ),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Exclusive Offer",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "See all",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                        color: ColorConstant.COLOR_RED,
                                        fontWeight: FontWeight.w400,
                                      ),
                                ),
                              )
                            ],
                          ),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ProductDetail(
                                                selectproductText:
                                                    "Organic Bananas",
                                                selectproductImage:
                                                    ImgConstants.BANANA,
                                              )),
                                    );
                                  },
                                  child: const ExclusiveOffer(
                                    image: ImgConstants.BANANA,
                                    title: "Organic Bananas",
                                    subtitle: "7pcs, Price",
                                    price: "\$4.99",
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
                                          builder: (context) =>
                                              const ProductDetail(
                                                selectproductText: "Red Apple",
                                                selectproductImage:
                                                    ImgConstants.APPLE,
                                              )),
                                    );
                                  },
                                  child: const ExclusiveOffer(
                                    image: ImgConstants.APPLE,
                                    title: "Red Apple",
                                    subtitle: "1 KG Price",
                                    price: "\$2.99",
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
                                          builder: (context) =>
                                              const ProductDetail(
                                                selectproductText: "Bakery",
                                                selectproductImage:
                                                    ImgConstants.BAKERY,
                                              )),
                                    );
                                  },
                                  child: const ExclusiveOffer(
                                    image: ImgConstants.BAKERY,
                                    title: "Bakery",
                                    subtitle: "1 KG Price",
                                    price: "\$1.99",
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(
                            height: 20,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Best Selling",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "See all",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                        color: ColorConstant.COLOR_RED,
                                        fontWeight: FontWeight.w400,
                                      ),
                                ),
                              )
                            ],
                          ),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ProductDetail(
                                                selectproductText:
                                                    "Apple Juice",
                                                selectproductImage:
                                                    ImgConstants.APPLEJUICE,
                                              )),
                                    );
                                  },
                                  child: const ExclusiveOffer(
                                    image: ImgConstants.APPLEJUICE,
                                    title: "Apple Juice",
                                    subtitle: "1 Litre Price",
                                    price: "\$3.99",
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
                                          builder: (context) =>
                                              const ProductDetail(
                                                selectproductText:
                                                    "Mango Juice",
                                                selectproductImage:
                                                    ImgConstants.MANGOJUICE,
                                              )),
                                    );
                                  },
                                  child: const ExclusiveOffer(
                                    image: ImgConstants.MANGOJUICE,
                                    title: "Mango Juice",
                                    subtitle: "1 Litre Price",
                                    price: "\$1.99",
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
                                          builder: (context) =>
                                              const ProductDetail(
                                                selectproductText: "Fresh Milk",
                                                selectproductImage:
                                                    ImgConstants.MILK,
                                              )),
                                    );
                                  },
                                  child: const ExclusiveOffer(
                                    image: ImgConstants.MILK,
                                    title: "Fresh Milk",
                                    subtitle: "1 Litre Price",
                                    price: "\$2.99",
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(
                            height: 20,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Groceries",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "See all",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                        color: ColorConstant.COLOR_RED,
                                        fontWeight: FontWeight.w400,
                                      ),
                                ),
                              )
                            ],
                          ),

                          SizedBox(
                              height: MediaQuery.of(context).size.height * 0.11,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ProductDetail(
                                                    selectproductText: "Pulse",
                                                    selectproductImage:
                                                        ImgConstants.PULSE,
                                                  )),
                                        );
                                      },
                                      child: const PulseWidget(
                                        image: ImgConstants.PULSE,
                                        title: "Pulse",
                                        color: Color(0xffF8A44C),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ProductDetail(
                                                    selectproductText: "Rice",
                                                    selectproductImage:
                                                        ImgConstants.RICE,
                                                  )),
                                        );
                                      },
                                      child: PulseWidget(
                                        image: ImgConstants.RICE,
                                        title: "Rice",
                                        color: _color,
                                      ),
                                    ),
                                  ],
                                ),
                              )),

                          const SizedBox(
                            height: 17,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Non-Veg",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "See all",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                        color: ColorConstant.COLOR_RED,
                                        fontWeight: FontWeight.w400,
                                      ),
                                ),
                              )
                            ],
                          ),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ProductDetail(
                                                selectproductText: "Beaf Bone",
                                                selectproductImage:
                                                    ImgConstants.MEAT,
                                              )),
                                    );
                                  },
                                  child: const ExclusiveOffer(
                                    image: ImgConstants.MEAT,
                                    title: "Beaf Bone",
                                    subtitle: "1 KG Price",
                                    price: "\$8.99",
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
                                          builder: (context) =>
                                              const ProductDetail(
                                                selectproductText:
                                                    "Boiler Chicken",
                                                selectproductImage:
                                                    ImgConstants.BONE,
                                              )),
                                    );
                                  },
                                  child: const ExclusiveOffer(
                                    image: ImgConstants.BONE,
                                    title: "Boiler Chicken",
                                    subtitle: "1 KG Price",
                                    price: "\$6.99",
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
                                          builder: (context) =>
                                              const ProductDetail(
                                                selectproductText: "Meat",
                                                selectproductImage:
                                                    ImgConstants.NONVEG,
                                              )),
                                    );
                                  },
                                  child: const ExclusiveOffer(
                                    image: ImgConstants.NONVEG,
                                    title: "Meat",
                                    subtitle: "1 KG Price",
                                    price: "\$10.99",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
