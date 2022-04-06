import 'package:flutter/material.dart';

import '../constance/color_constant.dart';
import '../constance/icon_constant.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final _formKey = GlobalKey<FormState>();
  bool autovalidate = false;
  String? name;

  final List<String> _locations = [
    'India',
    'Russia',
    'Dubai',
    'America'
  ]; // Option 2
  String? _selectedLocation; // Option 2

  final List<String> _arealocations = [
    'Delhi',
    'Mumbai',
    'Goa',
    'Agra'
  ]; // Option 2
  String? _selectedAreaLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.COLOR_WHITE,
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                ImgConstants.WHITE_BACKGROUND_SCREEN,
                fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Positioned(
                top: 50,
                left: 20,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: ColorConstant.COLOR_BLACK,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 100, left: 15.0, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Image.asset(
                            ImgConstants.MAP_LOGO,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width * 0.33,
                            height: MediaQuery.of(context).size.height * 0.23,
                          ),
                        ),

                        const SizedBox(
                          height: 25,
                        ),

                        Text(
                          "Select Your Location",
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 6.0, right: 6),
                          child: Text(
                            "Switch on your location to stay in tune with what’s happening in your area",
                            textAlign: TextAlign.center,
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),

                        const SizedBox(
                          height: 40,
                        ),

                        Row(
                          children: [
                            Text(
                              "Your Zone",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                          ],
                        ),

                        SizedBox(
                          width: double.infinity,
                          child: DropdownButtonFormField(
                            validator: (value) => value == null
                                ? 'Please select your Zone'
                                : null,
                            isExpanded: true,
                            hint: const Text(
                                'Please choose a location'), // Not necessary for Option 1
                            value: _selectedLocation,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedLocation = newValue as String?;
                              });
                            },
                            items: _locations.map((location) {
                              return DropdownMenuItem(
                                child: Text(location),
                                value: location,
                              );
                            }).toList(),
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        //Location

                        Row(
                          children: [
                            Text(
                              "Your Area",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                          ],
                        ),

                        SizedBox(
                          width: double.infinity,
                          child: DropdownButtonFormField(
                            validator: (value) => value == null
                                ? 'Please select your area location'
                                : null,
                            isExpanded: true,
                            hint: const Text(
                                'Please choose a Area location'), // Not necessary for Option 1
                            value: _selectedAreaLocation,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedAreaLocation = newValue as String?;
                              });
                            },
                            items: _arealocations.map((location) {
                              return DropdownMenuItem(
                                child: Text(location),
                                value: location,
                              );
                            }).toList(),
                          ),
                        ),

                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        ImgConstants.WHITE_BACKGROUND_SCREEN,
                        fit: BoxFit.fill,
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.4,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(
                                          color: Colors.red)))),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              //form is valid, proceed further
                              _formKey.currentState!.save();

                              Navigator.pushNamed(context, "home");
                            } else {
                              setState(() {
                                autovalidate =
                                    true; //enable realtime validation
                              });
                            }
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 17.0, bottom: 17),
                            child: Text(
                              "Submit",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(
                                    color: ColorConstant.COLOR_WHITE,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
