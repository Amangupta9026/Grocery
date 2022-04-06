import 'package:flutter/material.dart';
import 'package:nector_grocery/home_screen/product_detail.dart';

import '../constance/color_constant.dart';
import '../constance/icon_constant.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({Key? key}) : super(key: key);

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.COLOR_WHITE,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20, bottom: 150),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: ColorConstant.COLOR_GREY, width: 1),
                        color: const Color(0xffF2F3F2)),
                    child: TextField(
                      cursorColor: ColorConstant.COLOR_BLACK,
                      onChanged: (value) => _runFilter(value),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusColor: null,
                          hintText: 'Search',
                          hintStyle:
                              Theme.of(context).textTheme.subtitle1?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontWeight: FontWeight.w600,
                                  ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: ColorConstant.COLOR_BLACK,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: _foundUsers.isNotEmpty
                        ? SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: GridView.count(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                physics: const ScrollPhysics(),
                                childAspectRatio: (5 / 4.6),
                                crossAxisCount: 2,
                                crossAxisSpacing: 12.0,
                                mainAxisSpacing: 12.0,
                                shrinkWrap: true,
                                children:
                                    List.generate(_foundUsers.length, (index) {
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ProductDetail(
                                                  selectproductText:
                                                      "Diet Coke",
                                                  selectproductImage:
                                                      ImgConstants.COKE,
                                                )),
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                                  ImgConstants.SHOP,
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
                                                  _foundUsers[index]['name'],
                                                  textAlign: TextAlign.center,
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
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              Center(
                                                child: Text(
                                                  " 4 pcs ",
                                                  textAlign: TextAlign.center,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .subtitle2
                                                      ?.copyWith(
                                                        color: ColorConstant
                                                            .COLOR_GREY,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.01,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5.0, right: 5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "\$" +
                                                          _foundUsers[index]
                                                                  ['price']
                                                              .toString(),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .subtitle2
                                                          ?.copyWith(
                                                            color: ColorConstant
                                                                .COLOR_BLACK,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                    Image.asset(
                                                      ImgConstants.ADD,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.03,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.03,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                  );
                                })))
                        : const Text(
                            'No results found',
                            style: TextStyle(fontSize: 24),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Apple", "price": 29},
    {"id": 2, "name": "Mango", "price": 40},
    {"id": 3, "name": "Egg", "price": 5},
    {"id": 4, "name": "Banana", "price": 35},
    {"id": 5, "name": "Rice", "price": 21},
    {"id": 6, "name": "Tomato", "price": 12},
    {"id": 7, "name": "Potato", "price": 22},
    {"id": 8, "name": "Carrot", "price": 32},
    {"id": 9, "name": "Cucumber", "price": 18},
    {"id": 10, "name": "Onion", "price": 25},
    {"id": 11, "name": "Capsicum", "price": 15},
    {"id": 12, "name": "Cauliflower", "price": 30},
    {"id": 13, "name": "Broccoli", "price": 20},
    {"id": 14, "name": "Beans", "price": 35},
    {"id": 15, "name": "Peas", "price": 25},
    {"id": 16, "name": "Lentils", "price": 30},
    {"id": 17, "name": "Cabbage", "price": 40},
    {"id": 18, "name": "Cauliflower", "price": 30},
    {"id": 19, "name": "Broccoli", "price": 20},
    {"id": 20, "name": "Beans", "price": 35},
    {"id": 21, "name": "Peas", "price": 25},
    {"id": 22, "name": "Lentils", "price": 30},
    {"id": 23, "name": "Cabbage", "price": 40},
    {"id": 24, "name": "Cauliflower", "price": 30},
    {"id": 25, "name": "Broccoli", "price": 20},
    {"id": 26, "name": "Beans", "price": 35},
    {"id": 27, "name": "Peas", "price": 25},
    {"id": 28, "name": "Lentils", "price": 30},
    {"id": 29, "name": "Cabbage", "price": 40},
    {"id": 30, "name": "Cauliflower", "price": 30},
    {"id": 31, "name": "Broccoli", "price": 20},
    {"id": 32, "name": "Beans", "price": 35},
    {"id": 33, "name": "Peas", "price": 25},
    {"id": 34, "name": "Lentils", "price": 30},
    {"id": 35, "name": "Cabbage", "price": 40},
    {"id": 36, "name": "Cauliflower", "price": 30},
    {"id": 37, "name": "Broccoli", "price": 20},
    {"id": 38, "name": "Beans", "price": 35},
    {"id": 39, "name": "Peas", "price": 25},
    {"id": 40, "name": "Lentils", "price": 30},
  ];
}
