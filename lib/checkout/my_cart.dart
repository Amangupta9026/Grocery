import 'package:flutter/material.dart';
import 'package:nector_grocery/checkout/order_done.dart';

import '../accounts/accounts.dart';
import '../constance/color_constant.dart';
import '../constance/icon_constant.dart';
import '../home_screen/category.dart';
import '../home_screen/home_screen.dart';
import '../widget/bottom_navigation_widget.dart';
import 'faviorite.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
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
              'My Cart',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
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
                      color: selectedIndex == true
                          ? ColorConstant.COLOR_THEME_RED
                          : Colors.black,
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
              padding: const EdgeInsets.only(
                  left: 20.0, top: 20, right: 20, bottom: 100),
              child: Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        ImgConstants.APPLE,
                                        height: 70,
                                        width: 70,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "Apple",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1
                                                  ?.copyWith(
                                                    color: ColorConstant
                                                        .COLOR_BLACK,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                          const Spacer(),
                                          const Icon(
                                            Icons.close,
                                            size: 19,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        "1 KG Price",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2
                                            ?.copyWith(
                                              color: ColorConstant.COLOR_GREY,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.remove,
                                            size: 20,
                                            color: ColorConstant.COLOR_GREEN,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            width: 27,
                                            height: 27,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      ColorConstant.COLOR_GREY),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "1",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1
                                                    ?.copyWith(
                                                      color: ColorConstant
                                                          .COLOR_BLACK,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          const Icon(
                                            Icons.add,
                                            size: 20,
                                            color: ColorConstant.COLOR_GREEN,
                                          ),
                                          const Spacer(),
                                          Text(
                                            "\$4.99.00",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1
                                                ?.copyWith(
                                                  color:
                                                      ColorConstant.COLOR_BLACK,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(
                              thickness: 0.35,
                              color: ColorConstant.COLOR_BLACK,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        );
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
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
                      _getPrizeBreakUpBottomSheet();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 17.0, bottom: 17),
                      child: Text(
                        "Proceed to Pay",
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                              color: ColorConstant.COLOR_WHITE,
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

  void _getPrizeBreakUpBottomSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: false,
        backgroundColor: Colors.transparent,
        builder: (ctx) {
          return ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            child: Container(
              decoration: const BoxDecoration(
                color: ColorConstant.COLOR_WHITE,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(14.0),
                    color: ColorConstant.COLOR_WHITE,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Checkout",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(
                                  color: ColorConstant.COLOR_BLACK,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.0),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.close,
                            size: 25,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: ColorConstant.COLOR_BLACK,
                    thickness: 0.35,
                  ),
                  Container(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 14.0, right: 14.0, bottom: 10.0),
                      color: ColorConstant.COLOR_WHITE,
                      child: Row(
                        children: [
                          Text(
                            "Delivery",
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontSize: 16.0),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Text(
                                "Select Method",
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(
                                        color: ColorConstant.COLOR_BLACK,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 1,
                              ),
                            ],
                          ),
                        ],
                      )),
                  const Divider(
                    color: ColorConstant.COLOR_BLACK,
                    thickness: 0.35,
                  ),
                  Container(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 14.0, right: 14.0, bottom: 10.0),
                      color: ColorConstant.COLOR_WHITE,
                      child: Row(
                        children: [
                          Text(
                            "Payment",
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontSize: 16.0),
                          ),
                          const Spacer(),
                          Row(
                            children: const [
                              Icon(
                                Icons.payment,
                                size: 16,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                            ],
                          ),
                        ],
                      )),
                  const Divider(
                    color: ColorConstant.COLOR_BLACK,
                    thickness: 0.35,
                  ),
                  Container(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 14.0, right: 14.0, bottom: 10.0),
                      color: ColorConstant.COLOR_WHITE,
                      child: Row(
                        children: [
                          Text(
                            "Promo Code",
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontSize: 16.0),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Text(
                                "Pick discount",
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(
                                        color: ColorConstant.COLOR_BLACK,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                            ],
                          ),
                        ],
                      )),
                  const Divider(
                    color: ColorConstant.COLOR_BLACK,
                    thickness: 0.35,
                  ),
                  Container(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 14.0, right: 14.0, bottom: 10.0),
                      color: ColorConstant.COLOR_WHITE,
                      child: Row(
                        children: [
                          Text(
                            "Total Cost",
                            style:
                                Theme.of(context).textTheme.caption?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontSize: 16.0,
                                    ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Text(
                                "\$137",
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(
                                        color: ColorConstant.COLOR_BLACK,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                            ],
                          ),
                        ],
                      )),

                  //Richtext
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 14.0,
                      right: 14.0,
                    ),
                    child: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                            text: "By placing an order you agree to our",
                            style:
                                Theme.of(context).textTheme.subtitle2?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontWeight: FontWeight.w400,
                                    ),
                            children: <TextSpan>[
                              TextSpan(
                                text: " Terms ",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    ?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              TextSpan(
                                text: " and ",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    ?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                              TextSpan(
                                text: " Conditions ",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    ?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ])),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                    child: InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(14.0),
                          color: ColorConstant.COLOR_GREEN,
                          child: Center(
                            child: Text("Place Order",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(
                                        color: ColorConstant.COLOR_WHITE,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600)),
                          ),
                        ),
                        onTap: () async {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const OrderDone();
                          }));
                        }),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
