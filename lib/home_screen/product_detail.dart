import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grocery_uikit/checkout/my_cart.dart';
import 'package:grocery_uikit/constance/icon_constant.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../constance/color_constant.dart';

class ProductDetail extends StatefulWidget {
  final String? selectproductImage;
  final String? selectproductText;
  const ProductDetail(
      {super.key, this.selectproductImage, this.selectproductText});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.COLOR_WHITE,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstant.COLOR_WHITE,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: Column(children: [
                Container(
                  color: const Color(0xffF2F3F2),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back_ios,
                                size: 20,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                // bool checkPermission1 =
                                //     await Permission.storage.isGranted;
                                // // print(checkPermission1);
                                // if (checkPermission1 == false) {
                                //   await Permission.storage.request();
                                //   checkPermission1 =
                                //       await Permission.storage.isGranted;
                                // }

                                await Share.share(
                                    "Sharing to you ${widget.selectproductText} Please buy the product and get the fastest delivery.",
                                    subject: "Grocery App");
                                log("print share");
                                // File imagefile = await
                                // getImageFileFromAssets(
                                //     widget.selectproductImage!);

                                // await Share.shareFiles(
                                //     [imagefile.path]);
                                // // Share.shareFiles(paths: [
                                // //   '${widget.selectproductImage}/image.jpg'
                                // // ]);
                              },
                              child: const Icon(
                                Icons.share,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          widget.selectproductImage == null
                              ? ImgConstants.CARROT
                              : widget.selectproductImage.toString(),
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width / 2,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: ColorConstant.COLOR_WHITE,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20.0, right: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.selectproductText ?? "Carrot",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            const Icon(Icons.favorite_border_outlined,
                                size: 35),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.remove,
                                  size: 30,
                                  color: ColorConstant.COLOR_GREEN,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: ColorConstant.COLOR_GREY),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "1",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            color: ColorConstant.COLOR_BLACK,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Icon(
                                  Icons.add,
                                  size: 30,
                                  color: ColorConstant.COLOR_GREEN,
                                ),
                              ],
                            ),
                            Text(
                              "\$4.99",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          color: ColorConstant.COLOR_BLACK,
                          thickness: 0.35,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Product Detail",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            const Icon(
                              Icons.expand_more,
                              size: 30,
                              color: ColorConstant.COLOR_BLACK,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "${widget.selectproductText}  are nutritious. ${widget.selectproductText} may be good for health. ${widget.selectproductText} may be good for your heart. As part of a healtful and varied diet.",
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: ColorConstant.COLOR_GREY,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          color: ColorConstant.COLOR_BLACK,
                          thickness: 0.35,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nutritions",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xffE5E5E5)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "100g",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            color: ColorConstant.COLOR_BLACK,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: ColorConstant.COLOR_BLACK,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          color: ColorConstant.COLOR_BLACK,
                          thickness: 0.35,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Review",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Row(
                              children: [
                                // Rating package

                                RatingBar.builder(
                                  itemSize: 30,
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  // itemPadding: const EdgeInsets.symmetric(
                                  //     horizontal: 2.0),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: ColorConstant.COLOR_THEME_RED,
                                  ),
                                  onRatingUpdate: (rating) {
                                    //  log(rating);
                                  },
                                ),
                                const SizedBox(
                                  width: 8,
                                ),

                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: ColorConstant.COLOR_BLACK,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: const BorderSide(
                                            color: Colors.red)))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MyCart()));
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 18.0, bottom: 18),
                              child: Text(
                                "Add To Basket",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Future<File> getImageFileFromAssets(String path) async {
    final byteData = await rootBundle.load(path);

    final file = File('${(await getTemporaryDirectory()).path}/$path');
    await file.writeAsBytes(byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

    return file;
  }
}
