import 'dart:developer';

import 'package:flutter/material.dart';

import '../constance/color_constant.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  Map<String, bool> list = {
    'Egges': false,
    'Chocolates': false,
    'Flour': false,
    'Fllower': false,
    'Fruits': false,
  };

  var holder_1 = [];

  getItems() {
    list.forEach((key, value) {
      if (value == true) {
        holder_1.add(key);
      }
    });
    log(holder_1.toString());

    holder_1.clear();
  }

  // brand

  Map<String, bool> brand = {
    "Individual Callection": false,
    "Cocola": false,
    "Ifad": false,
    "Kazi Farmas": false,
  };

  var brand_2 = [];

  getbrandItems() {
    brand.forEach((brandkey, value) {
      if (value == true) {
        brand_2.add(brandkey);
      }
    });
    log(brand_2.toString());

    brand_2.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: ColorConstant.COLOR_WHITE,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: ColorConstant.COLOR_WHITE,
                leading: const Icon(
                  Icons.close,
                  size: 20,
                  color: ColorConstant.COLOR_BLACK,
                ),
                title: Text(
                  "Filters",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: ColorConstant.COLOR_BLACK,
                        fontWeight: FontWeight.w600,
                      ),
                )),
            bottomSheet: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.07,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.red)))),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                    child: Text(
                      "Apply Filter",
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            color: ColorConstant.COLOR_WHITE,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 100),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            "Categories",
                            textAlign: TextAlign.start,
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ),

                        const SizedBox(
                          height: 6,
                        ),

                        //checkbox

                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.4,
                          child: ListView(
                            physics: const NeverScrollableScrollPhysics(),
                            children: list.keys.map((String key) {
                              return CheckboxListTile(
                                value: list[key],
                                title: Text(key),
                                activeColor: ColorConstant.COLOR_RED,
                                checkColor: Colors.white,
                                onChanged: (bool? value) {
                                  setState(() {
                                    list[key] = value!;
                                  });
                                },
                              );
                            }).toList(),
                          ),
                        ),

                        // Brand

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                "Brand",
                                textAlign: TextAlign.start,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 6,
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.4,
                          child: ListView(
                            physics: const NeverScrollableScrollPhysics(),
                            children: brand.keys.map((String brandkey) {
                              return CheckboxListTile(
                                value: brand[brandkey],
                                title: Text(brandkey),
                                activeColor: ColorConstant.COLOR_RED,
                                checkColor: Colors.white,
                                onChanged: (bool? brandvalue) {
                                  setState(() {
                                    brand[brandkey] = brandvalue!;
                                  });
                                },
                              );
                            }).toList(),
                          ),
                        ),
                      ])),
            ),
          ),
        ));
  }
}
