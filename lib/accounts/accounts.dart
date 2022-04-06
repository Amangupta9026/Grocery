import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nector_grocery/checkout/faviorite.dart';
import 'package:nector_grocery/checkout/my_cart.dart';
import 'package:nector_grocery/login_page/signin.dart';

import '../constance/color_constant.dart';
import '../constance/icon_constant.dart';
import '../home_screen/category.dart';
import '../home_screen/home_screen.dart';
import '../widget/bottom_navigation_widget.dart';

class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  bool isLoading = false;
  bool selectedIndex = true;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: ColorConstant.COLOR_WHITE,
      // transparent status bar
    ));
    return Container(
      color: ColorConstant.COLOR_WHITE,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstant.COLOR_WHITE,
          appBar: AppBar(
            titleSpacing: 2,
            backgroundColor: ColorConstant.COLOR_WHITE,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15, bottom: 5),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                                left: 0.0,
                              ),
                              child: Container(
                                width: 60.0,
                                height: 60.0,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorConstant.COLOR_WHITE,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        ImgConstants.PROFILE_PERSON,
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 2,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Aman Gupta",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.edit,
                              color: ColorConstant.COLOR_GREY,
                              size: 20,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "amangupta723@gmail.com",
                          style:
                              Theme.of(context).textTheme.subtitle2?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
          body: _getMoreItems(),
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
                      color: selectedIndex == true
                          ? ColorConstant.COLOR_THEME_RED
                          : Colors.black,
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
        ),
      ),
    );
  }

  Widget _getMoreItems() {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(12.0),
      children: [
        _getCardItem(
            title: "Order",
            assetImage: const Icon(Icons.shopping_bag),
            //ImgConstants.account,
            onTapPerform: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => AffiliatePage(),
              //   ),
              // );
            }),
        _getCardItem(
            title: "My Details",
            assetImage: const Icon(Icons.how_to_reg),
            onTapPerform: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ReferEarn()));
            }),
        _getCardItem(
            title: "Delivery Address",
            assetImage: const Icon(Icons.location_on),
            onTapPerform: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ReferEarn()));
            }),
        _getCardItem(
            title: "Payment Method",
            assetImage: const Icon(Icons.paid),
            onTapPerform: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ReferEarn()));
            }),
        _getCardItem(
            title: "Promo Code",
            assetImage: const Icon(Icons.card_giftcard),
            onTapPerform: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ReferEarn()));
            }),
        _getCardItem(
            title: "Notifications",
            assetImage: const Icon(Icons.notifications),
            onTapPerform: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ReferEarn()));
            }),
        _getCardItem(
            title: "Help",
            assetImage: const Icon(Icons.help),
            onTapPerform: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ReferEarn()));
            }),
        _getCardItem(
            title: "About",
            assetImage: const Icon(Icons.error),
            onTapPerform: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ReferEarn()));
            }),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(color: Colors.red)))),
            onPressed: () {
              showAlertDialog(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 17.0, bottom: 17),
              child: Row(
                children: [
                  const Icon(
                    Icons.logout,
                    size: 20,
                  ),
                  const Spacer(),
                  Text(
                    "Log Out",
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          color: ColorConstant.COLOR_WHITE,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _getCardItem(
      {String? title, Widget? assetImage, Function? onTapPerform}) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            onTapPerform!();
          },
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    // height: 60.0,
                    // width: 60.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: ColorConstant.COLOR_GREY,
                        width: 1.2,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: assetImage,
                      // Image.asset(
                      //   assetImage!,
                      //   width: 20.0,
                      // ),
                    )),
                const SizedBox(width: 10.0),
                Text(
                  title ?? "",
                  style: Theme.of(context).textTheme.caption?.copyWith(
                      color: ColorConstant.COLOR_BLACK,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: ColorConstant.COLOR_BLACK,
                  size: 14,
                ),
              ],
            ),
          ),
        ),
        const Divider(
          thickness: 0.5,
          color: ColorConstant.COLOR_GREY,
        )
      ],
    );
  }

  void showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget okButton = TextButton(
      child: Text(
        "OK",
        style: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: ColorConstant.COLOR_RED,
              fontWeight: FontWeight.w500,
            ),
      ),
      onPressed: () {
        Navigator.pushAndRemoveUntil<dynamic>(
          context,
          MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => const SignInWith(),
          ),
          (route) => false,
        );
      },
    );

    Widget okCancel = TextButton(
      child: Text(
        "Cancel",
        style: Theme.of(context).textTheme.subtitle2?.copyWith(
              color: ColorConstant.COLOR_BLACK,
              fontWeight: FontWeight.w500,
            ),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: const Text("Are you sure you want to Logout ?"),
      actions: [okCancel, okButton],
    );

    // show the dialog
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(onWillPop: () => Future.value(false), child: alert);
      },
    );
  }
}
