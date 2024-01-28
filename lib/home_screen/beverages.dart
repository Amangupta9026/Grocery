import 'package:flutter/material.dart';
import 'package:grocery_uikit/home_screen/filter.dart';
import 'package:grocery_uikit/home_screen/product_detail.dart';

import '../constance/color_constant.dart';
import '../constance/icon_constant.dart';

class Beverages extends StatefulWidget {
  const Beverages({super.key});

  @override
  State<Beverages> createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: ColorConstant.COLOR_WHITE,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: ColorConstant.COLOR_WHITE,
              title: Text(
                "Beverages",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: ColorConstant.COLOR_BLACK,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: ColorConstant.COLOR_BLACK,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.filter_list,
                    color: ColorConstant.COLOR_BLACK,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Filter()),
                    );
                  },
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 23, right: 23, bottom: 100.0),
                child: Column(children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                      child: GridView.count(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          physics: const ScrollPhysics(),
                          childAspectRatio: (5 / 5.6),
                          crossAxisCount: 2,
                          crossAxisSpacing: 12.0,
                          mainAxisSpacing: 12.0,
                          shrinkWrap: true,
                          children: List.generate(20, (index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ProductDetail(
                                            selectproductText: "Diet Coke",
                                            selectproductImage:
                                                ImgConstants.COKE,
                                          )),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: ColorConstant.COLOR_WHITE,
                                    border: Border.all(
                                        color: ColorConstant.COLOR_GREY)),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      10.0, 0, 10, 10),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02,
                                        ),
                                        Center(
                                          child: Image.asset(
                                            ImgConstants.COKE,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.04,
                                          ),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.01,
                                        ),
                                        Center(
                                          child: Text(
                                            "Diet Coke",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(
                                                  color:
                                                      ColorConstant.COLOR_BLACK,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Center(
                                          child: Text(
                                            "355ml, Price",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall
                                                ?.copyWith(
                                                  color:
                                                      ColorConstant.COLOR_GREY,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.01,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "\$2.99",
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(
                                                    color: ColorConstant
                                                        .COLOR_BLACK,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Image.asset(
                                              ImgConstants.ADD,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.03,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.03,
                                            ),
                                          ],
                                        ),
                                      ]),
                                ),
                              ),
                            );
                          }))),
                ]),
              ),
            ),
          ),
        ));
  }
}
